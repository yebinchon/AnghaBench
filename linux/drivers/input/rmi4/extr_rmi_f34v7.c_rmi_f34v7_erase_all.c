
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ has_guest_code; scalar_t__ new_partition_table; int config_area; scalar_t__ has_display_cfg; int cmd_done; } ;
struct f34_data {TYPE_2__ v7; TYPE_1__* fn; } ;
struct TYPE_3__ {int dev; } ;


 int F34_ERASE_WAIT_MS ;
 int dev_info (int *,char*) ;
 int init_completion (int *) ;
 int rmi_f34v7_erase_config (struct f34_data*) ;
 int rmi_f34v7_erase_guest_code (struct f34_data*) ;
 int rmi_f34v7_wait_for_idle (struct f34_data*,int ) ;
 int rmi_f34v7_write_command (struct f34_data*,int ) ;
 int v7_CMD_ERASE_UI_FIRMWARE ;
 int v7_DP_CONFIG_AREA ;
 int v7_UI_CONFIG_AREA ;

__attribute__((used)) static int rmi_f34v7_erase_all(struct f34_data *f34)
{
 int ret;

 dev_info(&f34->fn->dev, "Erasing firmware...\n");

 init_completion(&f34->v7.cmd_done);

 ret = rmi_f34v7_write_command(f34, v7_CMD_ERASE_UI_FIRMWARE);
 if (ret < 0)
  return ret;

 ret = rmi_f34v7_wait_for_idle(f34, F34_ERASE_WAIT_MS);
 if (ret < 0)
  return ret;

 f34->v7.config_area = v7_UI_CONFIG_AREA;
 ret = rmi_f34v7_erase_config(f34);
 if (ret < 0)
  return ret;

 if (f34->v7.has_display_cfg) {
  f34->v7.config_area = v7_DP_CONFIG_AREA;
  ret = rmi_f34v7_erase_config(f34);
  if (ret < 0)
   return ret;
 }

 if (f34->v7.new_partition_table && f34->v7.has_guest_code) {
  ret = rmi_f34v7_erase_guest_code(f34);
  if (ret < 0)
   return ret;
 }

 return 0;
}
