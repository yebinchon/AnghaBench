
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt8973a_muic_info {int edev; int dev; } ;
typedef enum rt8973a_event_type { ____Placeholder_rt8973a_event_type } rt8973a_event_type ;


 unsigned int DM_DP_SWITCH_OPEN ;
 unsigned int DM_DP_SWITCH_UART ;
 unsigned int DM_DP_SWITCH_USB ;
 int EINVAL ;
 unsigned int EXTCON_CHG_USB_DCP ;
 unsigned int EXTCON_CHG_USB_SDP ;
 unsigned int EXTCON_JIG ;
 unsigned int EXTCON_USB ;
 unsigned int EXTCON_USB_HOST ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,...) ;
 int extcon_set_state_sync (int ,unsigned int,int) ;
 int rt8973a_muic_get_cable_type (struct rt8973a_muic_info*) ;
 int rt8973a_muic_set_path (struct rt8973a_muic_info*,unsigned int,int) ;

__attribute__((used)) static int rt8973a_muic_cable_handler(struct rt8973a_muic_info *info,
     enum rt8973a_event_type event)
{
 static unsigned int prev_cable_type;
 unsigned int con_sw = DM_DP_SWITCH_UART;
 int ret, cable_type;
 unsigned int id;
 bool attached = 0;

 switch (event) {
 case 164:
  cable_type = rt8973a_muic_get_cable_type(info);
  attached = 1;
  break;
 case 163:
  cable_type = prev_cable_type;
  attached = 0;
  break;
 case 161:
 case 162:
  dev_warn(info->dev,
   "happen Over %s issue. Need to disconnect all cables\n",
   event == 161 ? "Voltage" : "Temperature");
  cable_type = prev_cable_type;
  attached = 0;
  break;
 default:
  dev_err(info->dev,
   "Cannot handle this event (event:%d)\n", event);
  return -EINVAL;
 }
 prev_cable_type = cable_type;

 switch (cable_type) {
 case 141:
  id = EXTCON_USB_HOST;
  con_sw = DM_DP_SWITCH_USB;
  break;
 case 134:
  id = EXTCON_CHG_USB_DCP;
  con_sw = DM_DP_SWITCH_OPEN;
  break;
 case 145:
 case 143:
  id = EXTCON_JIG;
  con_sw = DM_DP_SWITCH_USB;
  break;
 case 146:
 case 144:
  id = EXTCON_JIG;
  con_sw = DM_DP_SWITCH_UART;
  break;
 case 128:
  id = EXTCON_USB;
  con_sw = DM_DP_SWITCH_USB;
  break;
 case 142:
  return 0;
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  dev_warn(info->dev,
   "Unknown accessory type (adc:0x%x)\n", cable_type);
  return 0;
 case 148:
 case 157:
 case 156:
 case 155:
 case 154:
 case 153:
 case 152:
 case 151:
 case 150:
 case 149:
 case 160:
 case 159:
 case 158:
 case 147:
  dev_warn(info->dev,
   "Audio device/button type (adc:0x%x)\n", cable_type);
  return 0;
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 140:
  return 0;
 default:
  dev_err(info->dev,
   "Cannot handle this cable_type (adc:0x%x)\n",
   cable_type);
  return -EINVAL;
 }


 ret = rt8973a_muic_set_path(info, con_sw, attached);
 if (ret < 0)
  return ret;


 extcon_set_state_sync(info->edev, id, attached);
 if (id == EXTCON_USB)
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SDP,
     attached);

 return 0;
}
