
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_module {int module_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct gb_module* to_gb_module (struct device*) ;

__attribute__((used)) static ssize_t module_id_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct gb_module *module = to_gb_module(dev);

 return sprintf(buf, "%u\n", module->module_id);
}
