
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_master_controller {int bus; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* do_daa ) (struct i3c_master_controller*) ;} ;


 int i3c_bus_maintenance_lock (int *) ;
 int i3c_bus_maintenance_unlock (int *) ;
 int i3c_bus_normaluse_lock (int *) ;
 int i3c_bus_normaluse_unlock (int *) ;
 int i3c_master_register_new_i3c_devs (struct i3c_master_controller*) ;
 int stub1 (struct i3c_master_controller*) ;

int i3c_master_do_daa(struct i3c_master_controller *master)
{
 int ret;

 i3c_bus_maintenance_lock(&master->bus);
 ret = master->ops->do_daa(master);
 i3c_bus_maintenance_unlock(&master->bus);

 if (ret)
  return ret;

 i3c_bus_normaluse_lock(&master->bus);
 i3c_master_register_new_i3c_devs(master);
 i3c_bus_normaluse_unlock(&master->bus);

 return 0;
}
