
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_module {size_t num_interfaces; int dev; int * interfaces; } ;


 int device_del (int *) ;
 int gb_module_deregister_interface (int ) ;
 int trace_gb_module_del (struct gb_module*) ;

void gb_module_del(struct gb_module *module)
{
 size_t i;

 for (i = 0; i < module->num_interfaces; ++i)
  gb_module_deregister_interface(module->interfaces[i]);

 trace_gb_module_del(module);

 device_del(&module->dev);
}
