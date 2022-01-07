
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;


 int __i2c_check_addr_busy (struct device*,void*) ;
 int device_for_each_child (struct device*,void*,int (*) (struct device*,void*)) ;
 int i2c_adapter_type ;

__attribute__((used)) static int i2c_check_mux_children(struct device *dev, void *addrp)
{
 int result;

 if (dev->type == &i2c_adapter_type)
  result = device_for_each_child(dev, addrp,
      i2c_check_mux_children);
 else
  result = __i2c_check_addr_busy(dev, addrp);

 return result;
}
