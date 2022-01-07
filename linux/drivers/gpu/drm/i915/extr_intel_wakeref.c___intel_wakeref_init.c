
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class_key {int dummy; } ;
struct intel_wakeref_ops {int dummy; } ;
struct intel_wakeref {int work; scalar_t__ wakeref; int count; int mutex; struct intel_wakeref_ops const* ops; struct intel_runtime_pm* rpm; } ;
struct intel_runtime_pm {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int __intel_wakeref_put_work ;
 int __mutex_init (int *,char*,struct lock_class_key*) ;
 int atomic_set (int *,int ) ;

void __intel_wakeref_init(struct intel_wakeref *wf,
     struct intel_runtime_pm *rpm,
     const struct intel_wakeref_ops *ops,
     struct lock_class_key *key)
{
 wf->rpm = rpm;
 wf->ops = ops;

 __mutex_init(&wf->mutex, "wakeref", key);
 atomic_set(&wf->count, 0);
 wf->wakeref = 0;

 INIT_WORK(&wf->work, __intel_wakeref_put_work);
}
