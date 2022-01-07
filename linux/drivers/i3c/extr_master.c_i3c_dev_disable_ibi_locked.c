
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i3c_master_controller {TYPE_1__* ops; } ;
struct i3c_dev_desc {TYPE_2__* ibi; } ;
struct TYPE_4__ {int enabled; int all_ibis_handled; int pending_ibis; } ;
struct TYPE_3__ {int (* disable_ibi ) (struct i3c_dev_desc*) ;} ;


 int EINVAL ;
 scalar_t__ atomic_read (int *) ;
 struct i3c_master_controller* i3c_dev_get_master (struct i3c_dev_desc*) ;
 int reinit_completion (int *) ;
 int stub1 (struct i3c_dev_desc*) ;
 int wait_for_completion (int *) ;

int i3c_dev_disable_ibi_locked(struct i3c_dev_desc *dev)
{
 struct i3c_master_controller *master;
 int ret;

 if (!dev->ibi)
  return -EINVAL;

 master = i3c_dev_get_master(dev);
 ret = master->ops->disable_ibi(dev);
 if (ret)
  return ret;

 reinit_completion(&dev->ibi->all_ibis_handled);
 if (atomic_read(&dev->ibi->pending_ibis))
  wait_for_completion(&dev->ibi->all_ibis_handled);

 dev->ibi->enabled = 0;

 return 0;
}
