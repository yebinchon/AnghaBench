
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_master_controller {int dev; } ;


 int device_unregister (int *) ;
 int i3c_master_bus_cleanup (struct i3c_master_controller*) ;
 int i3c_master_i2c_adapter_cleanup (struct i3c_master_controller*) ;
 int i3c_master_unregister_i3c_devs (struct i3c_master_controller*) ;

int i3c_master_unregister(struct i3c_master_controller *master)
{
 i3c_master_i2c_adapter_cleanup(master);
 i3c_master_unregister_i3c_devs(master);
 i3c_master_bus_cleanup(master);
 device_unregister(&master->dev);

 return 0;
}
