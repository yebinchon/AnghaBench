
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int config_area; int cmd_done; } ;
struct f34_data {TYPE_2__ v7; TYPE_1__* fn; } ;
struct TYPE_3__ {int dev; } ;


 int F34_ERASE_WAIT_MS ;
 int dev_info (int *,char*) ;
 int init_completion (int *) ;
 int rmi_f34v7_wait_for_idle (struct f34_data*,int ) ;
 int rmi_f34v7_write_command (struct f34_data*,int ) ;

 int v7_CMD_ERASE_BL_CONFIG ;
 int v7_CMD_ERASE_DISP_CONFIG ;
 int v7_CMD_ERASE_UI_CONFIG ;



__attribute__((used)) static int rmi_f34v7_erase_config(struct f34_data *f34)
{
 int ret;

 dev_info(&f34->fn->dev, "Erasing config...\n");

 init_completion(&f34->v7.cmd_done);

 switch (f34->v7.config_area) {
 case 128:
  ret = rmi_f34v7_write_command(f34, v7_CMD_ERASE_UI_CONFIG);
  if (ret < 0)
   return ret;
  break;
 case 129:
  ret = rmi_f34v7_write_command(f34, v7_CMD_ERASE_DISP_CONFIG);
  if (ret < 0)
   return ret;
  break;
 case 130:
  ret = rmi_f34v7_write_command(f34, v7_CMD_ERASE_BL_CONFIG);
  if (ret < 0)
   return ret;
  break;
 }

 ret = rmi_f34v7_wait_for_idle(f34, F34_ERASE_WAIT_MS);
 if (ret < 0)
  return ret;

 return 0;
}
