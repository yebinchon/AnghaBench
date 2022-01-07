
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_master_controller {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* bus_cleanup ) (struct i3c_master_controller*) ;} ;


 int i3c_master_detach_free_devs (struct i3c_master_controller*) ;
 int stub1 (struct i3c_master_controller*) ;

__attribute__((used)) static void i3c_master_bus_cleanup(struct i3c_master_controller *master)
{
 if (master->ops->bus_cleanup)
  master->ops->bus_cleanup(master);

 i3c_master_detach_free_devs(master);
}
