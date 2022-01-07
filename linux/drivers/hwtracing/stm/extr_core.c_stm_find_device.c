
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_device {int owner; } ;
struct device {int dummy; } ;


 struct device* class_find_device_by_name (int *,char const*) ;
 int put_device (struct device*) ;
 int stm_class ;
 int stm_core_up ;
 struct stm_device* to_stm_device (struct device*) ;
 int try_module_get (int ) ;

struct stm_device *stm_find_device(const char *buf)
{
 struct stm_device *stm;
 struct device *dev;

 if (!stm_core_up)
  return ((void*)0);

 dev = class_find_device_by_name(&stm_class, buf);
 if (!dev)
  return ((void*)0);

 stm = to_stm_device(dev);
 if (!try_module_get(stm->owner)) {

  put_device(dev);
  return ((void*)0);
 }

 return stm;
}
