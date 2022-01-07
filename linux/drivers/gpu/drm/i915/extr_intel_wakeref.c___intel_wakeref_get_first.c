
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_wakeref {int count; int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get ) (struct intel_wakeref*) ;} ;


 int INTEL_WAKEREF_BUG_ON (int) ;
 int SINGLE_DEPTH_NESTING ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int rpm_get (struct intel_wakeref*) ;
 int rpm_put (struct intel_wakeref*) ;
 int smp_mb__before_atomic () ;
 int stub1 (struct intel_wakeref*) ;
 scalar_t__ unlikely (int) ;

int __intel_wakeref_get_first(struct intel_wakeref *wf)
{






 mutex_lock_nested(&wf->mutex, SINGLE_DEPTH_NESTING);
 if (!atomic_read(&wf->count)) {
  int err;

  rpm_get(wf);

  err = wf->ops->get(wf);
  if (unlikely(err)) {
   rpm_put(wf);
   mutex_unlock(&wf->mutex);
   return err;
  }

  smp_mb__before_atomic();
 }
 atomic_inc(&wf->count);
 mutex_unlock(&wf->mutex);

 INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
 return 0;
}
