
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;


 int i2c_do_del_adapter (int ,void*) ;
 int to_i2c_driver (struct device_driver*) ;

__attribute__((used)) static int __process_removed_adapter(struct device_driver *d, void *data)
{
 i2c_do_del_adapter(to_i2c_driver(d), data);
 return 0;
}
