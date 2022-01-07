
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i3c_master_controller {TYPE_1__* ops; } ;
struct i3c_dev_desc {TYPE_2__* ibi; } ;
struct TYPE_4__ {int enabled; } ;
struct TYPE_3__ {int (* enable_ibi ) (struct i3c_dev_desc*) ;} ;


 int EINVAL ;
 struct i3c_master_controller* i3c_dev_get_master (struct i3c_dev_desc*) ;
 int stub1 (struct i3c_dev_desc*) ;

int i3c_dev_enable_ibi_locked(struct i3c_dev_desc *dev)
{
 struct i3c_master_controller *master = i3c_dev_get_master(dev);
 int ret;

 if (!dev->ibi)
  return -EINVAL;

 ret = master->ops->enable_ibi(dev);
 if (!ret)
  dev->ibi->enabled = 1;

 return ret;
}
