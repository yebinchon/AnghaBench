
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_wakeref {int mutex; int wakeref; TYPE_1__* ops; int count; } ;
struct TYPE_2__ {int (* put ) (struct intel_wakeref*) ;} ;


 int atomic_dec_and_test (int *) ;
 scalar_t__ likely (int) ;
 int mutex_unlock (int *) ;
 int rpm_put (struct intel_wakeref*) ;
 int stub1 (struct intel_wakeref*) ;
 int wake_up_var (int *) ;

__attribute__((used)) static void ____intel_wakeref_put_last(struct intel_wakeref *wf)
{
 if (!atomic_dec_and_test(&wf->count))
  goto unlock;


 if (likely(!wf->ops->put(wf))) {
  rpm_put(wf);
  wake_up_var(&wf->wakeref);
 }

unlock:
 mutex_unlock(&wf->mutex);
}
