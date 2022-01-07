
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_gem_submit {int nr_bos; TYPE_3__* bos; int ticket; } ;
struct TYPE_5__ {TYPE_1__* resv; } ;
struct msm_gem_object {TYPE_2__ base; } ;
struct TYPE_6__ {int flags; struct msm_gem_object* obj; } ;
struct TYPE_4__ {int lock; } ;


 int BO_LOCKED ;
 int EDEADLK ;
 int submit_unlock_unpin_bo (struct msm_gem_submit*,int,int) ;
 int ww_acquire_done (int *) ;
 int ww_mutex_lock_interruptible (int *,int *) ;
 int ww_mutex_lock_slow_interruptible (int *,int *) ;

__attribute__((used)) static int submit_lock_objects(struct msm_gem_submit *submit)
{
 int contended, slow_locked = -1, i, ret = 0;

retry:
 for (i = 0; i < submit->nr_bos; i++) {
  struct msm_gem_object *msm_obj = submit->bos[i].obj;

  if (slow_locked == i)
   slow_locked = -1;

  contended = i;

  if (!(submit->bos[i].flags & BO_LOCKED)) {
   ret = ww_mutex_lock_interruptible(&msm_obj->base.resv->lock,
     &submit->ticket);
   if (ret)
    goto fail;
   submit->bos[i].flags |= BO_LOCKED;
  }
 }

 ww_acquire_done(&submit->ticket);

 return 0;

fail:
 for (; i >= 0; i--)
  submit_unlock_unpin_bo(submit, i, 1);

 if (slow_locked > 0)
  submit_unlock_unpin_bo(submit, slow_locked, 1);

 if (ret == -EDEADLK) {
  struct msm_gem_object *msm_obj = submit->bos[contended].obj;

  ret = ww_mutex_lock_slow_interruptible(&msm_obj->base.resv->lock,
    &submit->ticket);
  if (!ret) {
   submit->bos[contended].flags |= BO_LOCKED;
   slow_locked = contended;
   goto retry;
  }
 }

 return ret;
}
