
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_wakeref {int work; int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int flags; } ;


 int INTEL_WAKEREF_BUG_ON (int ) ;
 int INTEL_WAKEREF_PUT_ASYNC ;
 int ____intel_wakeref_put_last (struct intel_wakeref*) ;
 int mutex_trylock (int *) ;
 int schedule_work (int *) ;
 int work_pending (int *) ;

void __intel_wakeref_put_last(struct intel_wakeref *wf)
{
 INTEL_WAKEREF_BUG_ON(work_pending(&wf->work));


 if (wf->ops->flags & INTEL_WAKEREF_PUT_ASYNC ||
     !mutex_trylock(&wf->mutex)) {
  schedule_work(&wf->work);
  return;
 }

 ____intel_wakeref_put_last(wf);
}
