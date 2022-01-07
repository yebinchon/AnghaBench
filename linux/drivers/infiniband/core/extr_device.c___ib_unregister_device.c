
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kref; } ;
struct TYPE_6__ {TYPE_1__ kobj; } ;
struct TYPE_5__ {scalar_t__ dealloc_driver; } ;
struct ib_device {int unregistration_lock; TYPE_3__ dev; TYPE_2__ ops; int refcount; } ;


 int WARN_ON (int) ;
 int device_del (TYPE_3__*) ;
 int disable_device (struct ib_device*) ;
 int free_netdevs (struct ib_device*) ;
 int ib_cache_cleanup_one (struct ib_device*) ;
 int ib_dealloc_device (struct ib_device*) ;
 int ib_device_unregister_rdmacg (struct ib_device*) ;
 int ib_device_unregister_sysfs (struct ib_device*) ;
 int kref_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_read (int *) ;

__attribute__((used)) static void __ib_unregister_device(struct ib_device *ib_dev)
{







 mutex_lock(&ib_dev->unregistration_lock);
 if (!refcount_read(&ib_dev->refcount))
  goto out;

 disable_device(ib_dev);


 free_netdevs(ib_dev);

 ib_device_unregister_sysfs(ib_dev);
 device_del(&ib_dev->dev);
 ib_device_unregister_rdmacg(ib_dev);
 ib_cache_cleanup_one(ib_dev);





 if (ib_dev->ops.dealloc_driver) {
  WARN_ON(kref_read(&ib_dev->dev.kobj.kref) <= 1);
  ib_dealloc_device(ib_dev);
 }
out:
 mutex_unlock(&ib_dev->unregistration_lock);
}
