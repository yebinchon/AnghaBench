
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;


 int i2c_do_add_adapter (int ,void*) ;
 int to_i2c_driver (struct device_driver*) ;

__attribute__((used)) static int __process_new_adapter(struct device_driver *d, void *data)
{
 return i2c_do_add_adapter(to_i2c_driver(d), data);
}
