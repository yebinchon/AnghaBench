
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;


 int i2c_adapter_type ;
 int i2c_do_add_adapter (void*,int ) ;
 int to_i2c_adapter (struct device*) ;

__attribute__((used)) static int __process_new_driver(struct device *dev, void *data)
{
 if (dev->type != &i2c_adapter_type)
  return 0;
 return i2c_do_add_adapter(data, to_i2c_adapter(dev));
}
