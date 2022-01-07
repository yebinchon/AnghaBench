
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock_device {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_hwspin_lock_device_match ;
 int devm_hwspin_lock_unreg ;
 int devres_release (struct device*,int ,int ,struct hwspinlock_device*) ;

int devm_hwspin_lock_unregister(struct device *dev,
    struct hwspinlock_device *bank)
{
 int ret;

 ret = devres_release(dev, devm_hwspin_lock_unreg,
        devm_hwspin_lock_device_match, bank);
 WARN_ON(ret);

 return ret;
}
