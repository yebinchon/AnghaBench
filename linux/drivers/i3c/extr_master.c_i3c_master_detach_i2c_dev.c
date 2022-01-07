
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i3c_master_controller {TYPE_2__* ops; } ;
struct TYPE_3__ {int node; } ;
struct i2c_dev_desc {TYPE_1__ common; } ;
struct TYPE_4__ {int (* detach_i2c_dev ) (struct i2c_dev_desc*) ;} ;


 struct i3c_master_controller* i2c_dev_get_master (struct i2c_dev_desc*) ;
 int list_del (int *) ;
 int stub1 (struct i2c_dev_desc*) ;

__attribute__((used)) static void i3c_master_detach_i2c_dev(struct i2c_dev_desc *dev)
{
 struct i3c_master_controller *master = i2c_dev_get_master(dev);

 list_del(&dev->common.node);

 if (master->ops->detach_i2c_dev)
  master->ops->detach_i2c_dev(dev);
}
