
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max77843_muic_info {int edev; int dev; } ;


 int EINVAL ;
 int EXTCON_JIG ;



 int MAX77843_MUIC_CONTROL1_SW_OPEN ;
 int MAX77843_MUIC_CONTROL1_SW_UART ;
 int MAX77843_MUIC_CONTROL1_SW_USB ;
 int dev_dbg (int ,char*,char*,int) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max77843_muic_set_path (struct max77843_muic_info*,int ,int,int) ;

__attribute__((used)) static int max77843_muic_jig_handler(struct max77843_muic_info *info,
  int cable_type, bool attached)
{
 int ret;
 u8 path = MAX77843_MUIC_CONTROL1_SW_OPEN;

 dev_dbg(info->dev, "external connector is %s (adc:0x%02x)\n",
   attached ? "attached" : "detached", cable_type);

 switch (cable_type) {
 case 129:
 case 128:
  path = MAX77843_MUIC_CONTROL1_SW_USB;
  break;
 case 130:
  path = MAX77843_MUIC_CONTROL1_SW_UART;
  break;
 default:
  return -EINVAL;
 }

 ret = max77843_muic_set_path(info, path, attached, 0);
 if (ret < 0)
  return ret;

 extcon_set_state_sync(info->edev, EXTCON_JIG, attached);

 return 0;
}
