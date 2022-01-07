
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock {int dummy; } ;
struct device {int dummy; } ;


 int hwspin_lock_free (struct hwspinlock*) ;

__attribute__((used)) static void devm_hwspin_lock_release(struct device *dev, void *res)
{
 hwspin_lock_free(*(struct hwspinlock **)res);
}
