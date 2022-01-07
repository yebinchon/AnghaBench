
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_module {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct gb_module*) ;
 struct gb_module* to_gb_module (struct device*) ;
 int trace_gb_module_release (struct gb_module*) ;

__attribute__((used)) static void gb_module_release(struct device *dev)
{
 struct gb_module *module = to_gb_module(dev);

 trace_gb_module_release(module);

 kfree(module);
}
