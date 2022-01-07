
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void hwspinlock ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int devm_hwspin_lock_match(struct device *dev, void *res, void *data)
{
 struct hwspinlock **hwlock = res;

 if (WARN_ON(!hwlock || !*hwlock))
  return 0;

 return *hwlock == data;
}
