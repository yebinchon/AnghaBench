
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_muic_info {int dev; int edev; } ;


 int EAGAIN ;
 int EINVAL ;
 int EXTCON_DISP_MHL ;
 int MAX8997_CABLE_GROUP_ADC ;
 int MAX8997_USB_DEVICE ;
 int MAX8997_USB_HOST ;
 int dev_err (int ,char*,char*,int) ;
 int dev_info (int ,char*,char*,int) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max8997_muic_get_cable_type (struct max8997_muic_info*,int ,int*) ;
 int max8997_muic_handle_dock (struct max8997_muic_info*,int,int) ;
 int max8997_muic_handle_jig_uart (struct max8997_muic_info*,int) ;
 int max8997_muic_handle_usb (struct max8997_muic_info*,int ,int) ;

__attribute__((used)) static int max8997_muic_adc_handler(struct max8997_muic_info *info)
{
 int cable_type;
 bool attached;
 int ret = 0;


 cable_type = max8997_muic_get_cable_type(info,
    MAX8997_CABLE_GROUP_ADC, &attached);

 switch (cable_type) {
 case 149:
  ret = max8997_muic_handle_usb(info, MAX8997_USB_HOST, attached);
  if (ret < 0)
   return ret;
  break;
 case 148:
  extcon_set_state_sync(info->edev, EXTCON_DISP_MHL, attached);
  break;
 case 151:
 case 150:
  ret = max8997_muic_handle_usb(info,
          MAX8997_USB_DEVICE, attached);
  if (ret < 0)
   return ret;
  break;
 case 157:
 case 152:
  ret = max8997_muic_handle_dock(info, cable_type, attached);
  if (ret < 0)
   return ret;
  break;
 case 153:
  ret = max8997_muic_handle_jig_uart(info, attached);
  break;
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 146:
 case 145:
 case 144:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 154:
 case 147:
 case 129:
 case 128:
 case 156:
 case 155:
 case 158:





  dev_info(info->dev,
   "cable is %s but it isn't used (type:0x%x)\n",
   attached ? "attached" : "detached", cable_type);
  return -EAGAIN;
 default:
  dev_err(info->dev,
   "failed to detect %s unknown cable (type:0x%x)\n",
   attached ? "attached" : "detached", cable_type);
  return -EINVAL;
 }

 return 0;
}
