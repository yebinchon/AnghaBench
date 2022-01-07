
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cmd_done; } ;
struct f34_data {TYPE_2__ v7; TYPE_1__* fn; } ;
struct TYPE_3__ {int dev; } ;


 int F34_ERASE_WAIT_MS ;
 int dev_info (int *,char*) ;
 int init_completion (int *) ;
 int rmi_f34v7_wait_for_idle (struct f34_data*,int ) ;
 int rmi_f34v7_write_command (struct f34_data*,int ) ;
 int v7_CMD_ERASE_GUEST_CODE ;

__attribute__((used)) static int rmi_f34v7_erase_guest_code(struct f34_data *f34)
{
 int ret;

 dev_info(&f34->fn->dev, "Erasing guest code...\n");

 init_completion(&f34->v7.cmd_done);

 ret = rmi_f34v7_write_command(f34, v7_CMD_ERASE_GUEST_CODE);
 if (ret < 0)
  return ret;

 ret = rmi_f34v7_wait_for_idle(f34, F34_ERASE_WAIT_MS);
 if (ret < 0)
  return ret;

 return 0;
}
