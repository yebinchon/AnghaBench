
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max77693_muic_info {int edev; int dev; } ;


 int EINVAL ;
 int EXTCON_JIG ;
 int MAX77693_CONTROL1_SW_OPEN ;
 int MAX77693_CONTROL1_SW_UART ;
 int MAX77693_CONTROL1_SW_USB ;




 int dev_err (int ,char*,char*) ;
 int dev_info (int ,char*,char*,int) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max77693_muic_set_path (struct max77693_muic_info*,int ,int) ;

__attribute__((used)) static int max77693_muic_jig_handler(struct max77693_muic_info *info,
  int cable_type, bool attached)
{
 int ret = 0;
 u8 path = MAX77693_CONTROL1_SW_OPEN;

 dev_info(info->dev,
  "external connector is %s (adc:0x%02x)\n",
  attached ? "attached" : "detached", cable_type);

 switch (cable_type) {
 case 129:
 case 128:

  path = MAX77693_CONTROL1_SW_USB;
  break;
 case 131:
 case 130:

  path = MAX77693_CONTROL1_SW_UART;
  break;
 default:
  dev_err(info->dev, "failed to detect %s jig cable\n",
   attached ? "attached" : "detached");
  return -EINVAL;
 }

 ret = max77693_muic_set_path(info, path, attached);
 if (ret < 0)
  return ret;

 extcon_set_state_sync(info->edev, EXTCON_JIG, attached);

 return 0;
}
