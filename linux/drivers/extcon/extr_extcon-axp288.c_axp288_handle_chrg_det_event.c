
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct axp288_extcon_info {unsigned int previous_cable; int vbus_attach; int dev; int role_work; scalar_t__ role_sw; int edev; int regmap; } ;


 int AXP288_BC_DET_STAT_REG ;
 int AXP288_BC_GLOBAL_REG ;
 int BC_GLOBAL_DET_STAT ;


 int DET_STAT_MASK ;

 int DET_STAT_SHIFT ;
 unsigned int EXTCON_CHG_USB_CDP ;
 unsigned int EXTCON_CHG_USB_DCP ;
 unsigned int EXTCON_CHG_USB_SDP ;
 unsigned int EXTCON_USB ;
 int axp288_get_vbus_attach (struct axp288_extcon_info*) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int extcon_set_state_sync (int ,unsigned int,int) ;
 int queue_work (int ,int *) ;
 int regmap_read (int ,int ,int*) ;
 int system_long_wq ;

__attribute__((used)) static int axp288_handle_chrg_det_event(struct axp288_extcon_info *info)
{
 int ret, stat, cfg;
 u8 chrg_type;
 unsigned int cable = info->previous_cable;
 bool vbus_attach = 0;

 vbus_attach = axp288_get_vbus_attach(info);
 if (!vbus_attach)
  goto no_vbus;


 ret = regmap_read(info->regmap, AXP288_BC_GLOBAL_REG, &cfg);
 if (ret < 0)
  goto dev_det_ret;
 if (cfg & BC_GLOBAL_DET_STAT) {
  dev_dbg(info->dev, "can't complete the charger detection\n");
  goto dev_det_ret;
 }

 ret = regmap_read(info->regmap, AXP288_BC_DET_STAT_REG, &stat);
 if (ret < 0)
  goto dev_det_ret;

 chrg_type = (stat & DET_STAT_MASK) >> DET_STAT_SHIFT;

 switch (chrg_type) {
 case 128:
  dev_dbg(info->dev, "sdp cable is connected\n");
  cable = EXTCON_CHG_USB_SDP;
  break;
 case 130:
  dev_dbg(info->dev, "cdp cable is connected\n");
  cable = EXTCON_CHG_USB_CDP;
  break;
 case 129:
  dev_dbg(info->dev, "dcp cable is connected\n");
  cable = EXTCON_CHG_USB_DCP;
  break;
 default:
  dev_warn(info->dev, "unknown (reserved) bc detect result\n");
  cable = EXTCON_CHG_USB_SDP;
 }

no_vbus:
 extcon_set_state_sync(info->edev, info->previous_cable, 0);
 if (info->previous_cable == EXTCON_CHG_USB_SDP)
  extcon_set_state_sync(info->edev, EXTCON_USB, 0);

 if (vbus_attach) {
  extcon_set_state_sync(info->edev, cable, vbus_attach);
  if (cable == EXTCON_CHG_USB_SDP)
   extcon_set_state_sync(info->edev, EXTCON_USB,
      vbus_attach);

  info->previous_cable = cable;
 }

 if (info->role_sw && info->vbus_attach != vbus_attach) {
  info->vbus_attach = vbus_attach;

  queue_work(system_long_wq, &info->role_work);
 }

 return 0;

dev_det_ret:
 if (ret < 0)
  dev_err(info->dev, "failed to detect BC Mod\n");

 return ret;
}
