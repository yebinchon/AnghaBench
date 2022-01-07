
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77843_muic_info {int dev; int edev; } ;


 int EINVAL ;
 int EXTCON_DISP_MHL ;
 int EXTCON_USB_HOST ;
 int MAX77843_CABLE_GROUP_ADC_GND ;
 int MAX77843_MUIC_CONTROL1_SW_OPEN ;
 int MAX77843_MUIC_CONTROL1_SW_USB ;




 int dev_dbg (int ,char*,char*,int) ;
 int dev_err (int ,char*,char*,int) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max77843_charger_set_otg_vbus (struct max77843_muic_info*,int) ;
 int max77843_muic_get_cable_type (struct max77843_muic_info*,int ,int*) ;
 int max77843_muic_set_path (struct max77843_muic_info*,int ,int,int) ;

__attribute__((used)) static int max77843_muic_adc_gnd_handler(struct max77843_muic_info *info)
{
 int ret, gnd_cable_type;
 bool attached;

 gnd_cable_type = max77843_muic_get_cable_type(info,
   MAX77843_CABLE_GROUP_ADC_GND, &attached);
 dev_dbg(info->dev, "external connector is %s (gnd:0x%02x)\n",
   attached ? "attached" : "detached", gnd_cable_type);

 switch (gnd_cable_type) {
 case 129:
 case 128:
  ret = max77843_muic_set_path(info,
          MAX77843_MUIC_CONTROL1_SW_USB,
          attached, 0);
  if (ret < 0)
   return ret;

  extcon_set_state_sync(info->edev, EXTCON_USB_HOST, attached);
  max77843_charger_set_otg_vbus(info, attached);
  break;
 case 130:
 case 131:
  ret = max77843_muic_set_path(info,
          MAX77843_MUIC_CONTROL1_SW_OPEN,
          attached, 0);
  if (ret < 0)
   return ret;

  extcon_set_state_sync(info->edev, EXTCON_DISP_MHL, attached);
  break;
 default:
  dev_err(info->dev, "failed to detect %s accessory(gnd:0x%x)\n",
   attached ? "attached" : "detached", gnd_cable_type);
  return -EINVAL;
 }

 return 0;
}
