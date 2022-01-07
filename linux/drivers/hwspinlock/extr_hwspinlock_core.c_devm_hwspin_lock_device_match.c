
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void hwspinlock_device ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int devm_hwspin_lock_device_match(struct device *dev, void *res,
      void *data)
{
 struct hwspinlock_device **bank = res;

 if (WARN_ON(!bank || !*bank))
  return 0;

 return *bank == data;
}
