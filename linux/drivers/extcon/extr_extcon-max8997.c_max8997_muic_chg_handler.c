
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_muic_info {int* status; int dev; int edev; } ;


 int EINVAL ;
 int EXTCON_CHG_USB_CDP ;
 int EXTCON_CHG_USB_DCP ;
 int EXTCON_CHG_USB_FAST ;
 int EXTCON_CHG_USB_SLOW ;
 int MAX8997_CABLE_GROUP_CHG ;






 int MAX8997_MUIC_ADC_OPEN ;
 int MAX8997_USB_DEVICE ;
 int STATUS1_ADC_MASK ;
 int STATUS1_ADC_SHIFT ;
 int dev_err (int ,char*,char*,int) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max8997_muic_get_cable_type (struct max8997_muic_info*,int ,int*) ;
 int max8997_muic_handle_usb (struct max8997_muic_info*,int ,int) ;

__attribute__((used)) static int max8997_muic_chg_handler(struct max8997_muic_info *info)
{
 int chg_type;
 bool attached;
 int adc;

 chg_type = max8997_muic_get_cable_type(info,
    MAX8997_CABLE_GROUP_CHG, &attached);

 switch (chg_type) {
 case 129:
  break;
 case 128:
  adc = info->status[0] & STATUS1_ADC_MASK;
  adc >>= STATUS1_ADC_SHIFT;

  if ((adc & STATUS1_ADC_MASK) == MAX8997_MUIC_ADC_OPEN) {
   max8997_muic_handle_usb(info,
     MAX8997_USB_DEVICE, attached);
  }
  break;
 case 130:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_CDP,
     attached);
  break;
 case 131:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_DCP,
     attached);
  break;
 case 132:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SLOW,
     attached);
  break;
 case 133:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_FAST,
     attached);
  break;
 default:
  dev_err(info->dev,
   "failed to detect %s unknown chg cable (type:0x%x)\n",
   attached ? "attached" : "detached", chg_type);
  return -EINVAL;
 }

 return 0;
}
