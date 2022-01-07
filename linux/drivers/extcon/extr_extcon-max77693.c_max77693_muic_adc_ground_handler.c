
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_muic_info {int dev; int edev; } ;


 int EINVAL ;
 int EXTCON_CHG_USB_SDP ;
 int EXTCON_DISP_MHL ;
 int EXTCON_USB ;
 int EXTCON_USB_HOST ;
 int MAX77693_CABLE_GROUP_ADC_GND ;
 int MAX77693_CONTROL1_SW_AUDIO ;
 int MAX77693_CONTROL1_SW_USB ;





 int dev_err (int ,char*,char*) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max77693_muic_get_cable_type (struct max77693_muic_info*,int ,int*) ;
 int max77693_muic_set_path (struct max77693_muic_info*,int ,int) ;

__attribute__((used)) static int max77693_muic_adc_ground_handler(struct max77693_muic_info *info)
{
 int cable_type_gnd;
 int ret = 0;
 bool attached;

 cable_type_gnd = max77693_muic_get_cable_type(info,
    MAX77693_CABLE_GROUP_ADC_GND, &attached);

 switch (cable_type_gnd) {
 case 129:
 case 128:

  ret = max77693_muic_set_path(info, MAX77693_CONTROL1_SW_USB,
      attached);
  if (ret < 0)
   return ret;
  extcon_set_state_sync(info->edev, EXTCON_USB_HOST, attached);
  break;
 case 132:

  ret = max77693_muic_set_path(info, MAX77693_CONTROL1_SW_AUDIO,
      attached);
  if (ret < 0)
   return ret;
  extcon_set_state_sync(info->edev, EXTCON_USB, attached);
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SDP,
     attached);
  break;
 case 131:
 case 130:

  extcon_set_state_sync(info->edev, EXTCON_DISP_MHL, attached);
  break;
 default:
  dev_err(info->dev, "failed to detect %s cable of gnd type\n",
   attached ? "attached" : "detached");
  return -EINVAL;
 }

 return 0;
}
