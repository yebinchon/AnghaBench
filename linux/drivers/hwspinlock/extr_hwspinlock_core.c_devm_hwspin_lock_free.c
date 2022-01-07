
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_hwspin_lock_match ;
 int devm_hwspin_lock_release ;
 int devres_release (struct device*,int ,int ,struct hwspinlock*) ;

int devm_hwspin_lock_free(struct device *dev, struct hwspinlock *hwlock)
{
 int ret;

 ret = devres_release(dev, devm_hwspin_lock_release,
        devm_hwspin_lock_match, hwlock);
 WARN_ON(ret);

 return ret;
}
