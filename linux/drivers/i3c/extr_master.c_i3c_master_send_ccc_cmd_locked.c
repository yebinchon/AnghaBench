
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct i3c_master_controller {TYPE_2__* ops; TYPE_1__ bus; scalar_t__ init_done; } ;
struct i3c_ccc_cmd {int id; scalar_t__ err; int ndests; int dests; } ;
struct TYPE_4__ {int (* send_ccc_cmd ) (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;int (* supports_ccc_cmd ) (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;} ;


 int EINVAL ;
 int ENOTSUPP ;
 int I3C_CCC_DIRECT ;
 scalar_t__ I3C_ERROR_UNKNOWN ;
 scalar_t__ WARN_ON (int) ;
 int rwsem_is_locked (int *) ;
 int stub1 (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;
 int stub2 (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;

__attribute__((used)) static int i3c_master_send_ccc_cmd_locked(struct i3c_master_controller *master,
       struct i3c_ccc_cmd *cmd)
{
 int ret;

 if (!cmd || !master)
  return -EINVAL;

 if (WARN_ON(master->init_done &&
      !rwsem_is_locked(&master->bus.lock)))
  return -EINVAL;

 if (!master->ops->send_ccc_cmd)
  return -ENOTSUPP;

 if ((cmd->id & I3C_CCC_DIRECT) && (!cmd->dests || !cmd->ndests))
  return -EINVAL;

 if (master->ops->supports_ccc_cmd &&
     !master->ops->supports_ccc_cmd(master, cmd))
  return -ENOTSUPP;

 ret = master->ops->send_ccc_cmd(master, cmd);
 if (ret) {
  if (cmd->err != I3C_ERROR_UNKNOWN)
   return cmd->err;

  return ret;
 }

 return 0;
}
