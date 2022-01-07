
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct vio_dev {TYPE_1__ dev; } ;
struct nx842_devdata {struct nx842_devdata* counters; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int crypto_unregister_alg (int *) ;
 int dev_set_drvdata (TYPE_1__*,int *) ;
 int devdata ;
 int devdata_mutex ;
 int kfree (struct nx842_devdata*) ;
 int lockdep_is_held (int *) ;
 int nx842_attribute_group ;
 int nx842_of_nb ;
 int nx842_pseries_alg ;
 int of_reconfig_notifier_unregister (int *) ;
 int pr_info (char*) ;
 struct nx842_devdata* rcu_dereference_check (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_rcu () ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int nx842_remove(struct vio_dev *viodev)
{
 struct nx842_devdata *old_devdata;
 unsigned long flags;

 pr_info("Removing IBM Power 842 compression device\n");
 sysfs_remove_group(&viodev->dev.kobj, &nx842_attribute_group);

 crypto_unregister_alg(&nx842_pseries_alg);

 spin_lock_irqsave(&devdata_mutex, flags);
 old_devdata = rcu_dereference_check(devdata,
   lockdep_is_held(&devdata_mutex));
 of_reconfig_notifier_unregister(&nx842_of_nb);
 RCU_INIT_POINTER(devdata, ((void*)0));
 spin_unlock_irqrestore(&devdata_mutex, flags);
 synchronize_rcu();
 dev_set_drvdata(&viodev->dev, ((void*)0));
 if (old_devdata)
  kfree(old_devdata->counters);
 kfree(old_devdata);

 return 0;
}
