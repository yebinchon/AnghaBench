
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_module {size_t num_interfaces; int * interfaces; int dev; } ;


 int dev_err (int *,char*,int) ;
 int device_add (int *) ;
 int gb_module_register_interface (int ) ;
 int trace_gb_module_add (struct gb_module*) ;

int gb_module_add(struct gb_module *module)
{
 size_t i;
 int ret;

 ret = device_add(&module->dev);
 if (ret) {
  dev_err(&module->dev, "failed to register module: %d\n", ret);
  return ret;
 }

 trace_gb_module_add(module);

 for (i = 0; i < module->num_interfaces; ++i)
  gb_module_register_interface(module->interfaces[i]);

 return 0;
}
