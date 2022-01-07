
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_muic_info {int dev; int edev; } ;


 int CONTROL1_SW_AUDIO ;
 int EINVAL ;
 int EXTCON_DOCK ;


 int dev_err (int ,char*,...) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max8997_muic_set_path (struct max8997_muic_info*,int ,int) ;

__attribute__((used)) static int max8997_muic_handle_dock(struct max8997_muic_info *info,
   int cable_type, bool attached)
{
 int ret = 0;

 ret = max8997_muic_set_path(info, CONTROL1_SW_AUDIO, attached);
 if (ret) {
  dev_err(info->dev, "failed to update muic register\n");
  return ret;
 }

 switch (cable_type) {
 case 129:
 case 128:
  extcon_set_state_sync(info->edev, EXTCON_DOCK, attached);
  break;
 default:
  dev_err(info->dev, "failed to detect %s dock device\n",
   attached ? "attached" : "detached");
  return -EINVAL;
 }

 return 0;
}
