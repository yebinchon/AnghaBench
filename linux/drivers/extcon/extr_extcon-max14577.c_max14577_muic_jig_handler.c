
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max14577_muic_info {int edev; int dev; } ;


 int CTRL1_SW_OPEN ;
 int CTRL1_SW_UART ;
 int CTRL1_SW_USB ;
 int EINVAL ;
 int EXTCON_JIG ;



 int dev_dbg (int ,char*,char*,int) ;
 int dev_err (int ,char*,char*) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max14577_muic_set_path (struct max14577_muic_info*,int ,int) ;

__attribute__((used)) static int max14577_muic_jig_handler(struct max14577_muic_info *info,
  int cable_type, bool attached)
{
 int ret = 0;
 u8 path = CTRL1_SW_OPEN;

 dev_dbg(info->dev,
  "external connector is %s (adc:0x%02x)\n",
  attached ? "attached" : "detached", cable_type);

 switch (cable_type) {
 case 129:
 case 128:

  path = CTRL1_SW_USB;
  break;
 case 130:

  path = CTRL1_SW_UART;
  break;
 default:
  dev_err(info->dev, "failed to detect %s jig cable\n",
   attached ? "attached" : "detached");
  return -EINVAL;
 }

 ret = max14577_muic_set_path(info, path, attached);
 if (ret < 0)
  return ret;

 extcon_set_state_sync(info->edev, EXTCON_JIG, attached);

 return 0;
}
