
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_module {size_t num_interfaces; int dev; int * interfaces; } ;


 int gb_interface_put (int ) ;
 int put_device (int *) ;

void gb_module_put(struct gb_module *module)
{
 size_t i;

 for (i = 0; i < module->num_interfaces; ++i)
  gb_interface_put(module->interfaces[i]);

 put_device(&module->dev);
}
