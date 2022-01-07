
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_muic_info {int edev; int dev; int path_uart; } ;


 int EXTCON_JIG ;
 int dev_err (int ,char*) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max8997_muic_set_path (struct max8997_muic_info*,int ,int) ;

__attribute__((used)) static int max8997_muic_handle_jig_uart(struct max8997_muic_info *info,
   bool attached)
{
 int ret = 0;


 ret = max8997_muic_set_path(info, info->path_uart, attached);
 if (ret) {
  dev_err(info->dev, "failed to update muic register\n");
  return ret;
 }

 extcon_set_state_sync(info->edev, EXTCON_JIG, attached);

 return 0;
}
