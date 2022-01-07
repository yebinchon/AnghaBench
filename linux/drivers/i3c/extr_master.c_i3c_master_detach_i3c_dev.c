
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i3c_master_controller {TYPE_1__* ops; struct i3c_dev_desc* this; } ;
struct TYPE_4__ {int node; } ;
struct i3c_dev_desc {TYPE_2__ common; } ;
struct TYPE_3__ {int (* detach_i3c_dev ) (struct i3c_dev_desc*) ;} ;


 struct i3c_master_controller* i3c_dev_get_master (struct i3c_dev_desc*) ;
 int i3c_master_put_i3c_addrs (struct i3c_dev_desc*) ;
 int list_del (int *) ;
 int stub1 (struct i3c_dev_desc*) ;

__attribute__((used)) static void i3c_master_detach_i3c_dev(struct i3c_dev_desc *dev)
{
 struct i3c_master_controller *master = i3c_dev_get_master(dev);


 if (master->this != dev && master->ops->detach_i3c_dev)
  master->ops->detach_i3c_dev(dev);

 i3c_master_put_i3c_addrs(dev);
 list_del(&dev->common.node);
}
