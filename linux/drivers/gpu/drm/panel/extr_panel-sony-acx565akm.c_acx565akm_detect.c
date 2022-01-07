
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct acx565akm_panel {int enabled; char* name; int has_bc; int has_cabc; int reset_gpio; int revision; TYPE_1__* spi; int * display_id; int model; } ;
typedef int __be32 ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int MIPID_VER_ACX565AKM ;
 int MIPID_VER_L4F00311 ;
 int MIPID_VER_LPH8923 ;
 int MIPID_VER_LS041Y3 ;
 int MIPI_DCS_GET_DISPLAY_ID ;
 int MIPI_DCS_GET_DISPLAY_STATUS ;
 int __be32_to_cpu (int ) ;
 int acx565akm_read (struct acx565akm_panel*,int ,int *,int) ;
 int dev_dbg (int *,char*,char*,int,...) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,char*,int ) ;
 int gpiod_set_value (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int acx565akm_detect(struct acx565akm_panel *lcd)
{
 __be32 value;
 u32 status;
 int ret = 0;





 gpiod_set_value(lcd->reset_gpio, 1);
 usleep_range(5000, 10000);

 acx565akm_read(lcd, MIPI_DCS_GET_DISPLAY_STATUS, (u8 *)&value, 4);
 status = __be32_to_cpu(value);
 lcd->enabled = (status & (1 << 17)) && (status & (1 << 10));

 dev_dbg(&lcd->spi->dev,
  "LCD panel %s by bootloader (status 0x%04x)\n",
  lcd->enabled ? "enabled" : "disabled ", status);

 acx565akm_read(lcd, MIPI_DCS_GET_DISPLAY_ID, lcd->display_id, 3);
 dev_dbg(&lcd->spi->dev, "MIPI display ID: %02x%02x%02x\n",
  lcd->display_id[0], lcd->display_id[1], lcd->display_id[2]);

 switch (lcd->display_id[0]) {
 case 0x10:
  lcd->model = MIPID_VER_ACX565AKM;
  lcd->name = "acx565akm";
  lcd->has_bc = 1;
  lcd->has_cabc = 1;
  break;
 case 0x29:
  lcd->model = MIPID_VER_L4F00311;
  lcd->name = "l4f00311";
  break;
 case 0x45:
  lcd->model = MIPID_VER_LPH8923;
  lcd->name = "lph8923";
  break;
 case 0x83:
  lcd->model = MIPID_VER_LS041Y3;
  lcd->name = "ls041y3";
  break;
 default:
  lcd->name = "unknown";
  dev_err(&lcd->spi->dev, "unknown display ID\n");
  ret = -ENODEV;
  goto done;
 }

 lcd->revision = lcd->display_id[1];

 dev_info(&lcd->spi->dev, "%s rev %02x panel detected\n",
   lcd->name, lcd->revision);

done:
 if (!lcd->enabled)
  gpiod_set_value(lcd->reset_gpio, 0);

 return ret;
}
