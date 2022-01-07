
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int devm_hwspin_lock_release ;
 int devres_add (struct device*,struct hwspinlock**) ;
 struct hwspinlock** devres_alloc (int ,int,int ) ;
 int devres_free (struct hwspinlock**) ;
 struct hwspinlock* hwspin_lock_request () ;

struct hwspinlock *devm_hwspin_lock_request(struct device *dev)
{
 struct hwspinlock **ptr, *hwlock;

 ptr = devres_alloc(devm_hwspin_lock_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ((void*)0);

 hwlock = hwspin_lock_request();
 if (hwlock) {
  *ptr = hwlock;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return hwlock;
}
