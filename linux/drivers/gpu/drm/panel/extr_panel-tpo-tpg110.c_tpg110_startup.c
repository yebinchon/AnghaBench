
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpg110_panel_mode {int magic; } ;
struct tpg110 {int dev; struct tpg110_panel_mode const* panel_mode; int grestb; } ;


 int ARRAY_SIZE (struct tpg110_panel_mode*) ;
 int DRM_DEV_DEBUG (int ,char*) ;
 int DRM_DEV_ERROR (int ,char*,...) ;
 int DRM_DEV_INFO (int ,char*,...) ;
 int ENODEV ;
 int TPG110_CHIPID ;
 int TPG110_CTRL1 ;
 int TPG110_CTRL2 ;
 int TPG110_CTRL2_RES_PM_CTRL ;






 int TPG110_RES_MASK ;
 int TPG110_TEST ;
 int gpiod_set_value_cansleep (int ,int ) ;
 struct tpg110_panel_mode* tpg110_modes ;
 int tpg110_read_reg (struct tpg110*,int ) ;
 int tpg110_write_reg (struct tpg110*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tpg110_startup(struct tpg110 *tpg)
{
 u8 val;
 int i;


 gpiod_set_value_cansleep(tpg->grestb, 0);
 usleep_range(1000, 2000);
 DRM_DEV_DEBUG(tpg->dev, "de-asserted GRESTB\n");


 tpg110_write_reg(tpg, TPG110_TEST, 0x55);
 val = tpg110_read_reg(tpg, TPG110_TEST);
 if (val != 0x55) {
  DRM_DEV_ERROR(tpg->dev, "failed communication test\n");
  return -ENODEV;
 }

 val = tpg110_read_reg(tpg, TPG110_CHIPID);
 DRM_DEV_INFO(tpg->dev, "TPG110 chip ID: %d version: %d\n",
   val >> 4, val & 0x0f);


 val = tpg110_read_reg(tpg, TPG110_CTRL1);
 val &= TPG110_RES_MASK;
 switch (val) {
 case 133:
  DRM_DEV_INFO(tpg->dev,
    "IN 400x240 RGB -> OUT 800x480 RGB (dual scan)\n");
  break;
 case 131:
  DRM_DEV_INFO(tpg->dev,
    "IN 480x272 RGB -> OUT 800x480 RGB (dual scan)\n");
  break;
 case 130:
  DRM_DEV_INFO(tpg->dev, "480x640 RGB\n");
  break;
 case 132:
  DRM_DEV_INFO(tpg->dev, "480x272 RGB\n");
  break;
 case 129:
  DRM_DEV_INFO(tpg->dev, "640x480 RGB\n");
  break;
 case 128:
  DRM_DEV_INFO(tpg->dev, "800x480 RGB\n");
  break;
 default:
  DRM_DEV_ERROR(tpg->dev, "ILLEGAL RESOLUTION 0x%02x\n", val);
  break;
 }


 if (val == 131)
  val = 132;

 for (i = 0; i < ARRAY_SIZE(tpg110_modes); i++) {
  const struct tpg110_panel_mode *pm;

  pm = &tpg110_modes[i];
  if (pm->magic == val) {
   tpg->panel_mode = pm;
   break;
  }
 }
 if (i == ARRAY_SIZE(tpg110_modes)) {
  DRM_DEV_ERROR(tpg->dev, "unsupported mode (%02x) detected\n",
   val);
  return -ENODEV;
 }

 val = tpg110_read_reg(tpg, TPG110_CTRL2);
 DRM_DEV_INFO(tpg->dev, "resolution and standby is controlled by %s\n",
   (val & TPG110_CTRL2_RES_PM_CTRL) ? "software" : "hardware");

 val |= TPG110_CTRL2_RES_PM_CTRL;
 tpg110_write_reg(tpg, TPG110_CTRL2, val);

 return 0;
}
