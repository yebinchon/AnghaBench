
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_gem_submit {TYPE_2__* bos; int aspace; } ;
struct TYPE_6__ {TYPE_1__* resv; } ;
struct msm_gem_object {TYPE_3__ base; } ;
struct TYPE_5__ {int flags; scalar_t__ iova; struct msm_gem_object* obj; } ;
struct TYPE_4__ {int lock; } ;


 int BO_LOCKED ;
 int BO_PINNED ;
 int BO_VALID ;
 int msm_gem_unpin_iova (TYPE_3__*,int ) ;
 int ww_mutex_unlock (int *) ;

__attribute__((used)) static void submit_unlock_unpin_bo(struct msm_gem_submit *submit,
  int i, bool backoff)
{
 struct msm_gem_object *msm_obj = submit->bos[i].obj;

 if (submit->bos[i].flags & BO_PINNED)
  msm_gem_unpin_iova(&msm_obj->base, submit->aspace);

 if (submit->bos[i].flags & BO_LOCKED)
  ww_mutex_unlock(&msm_obj->base.resv->lock);

 if (backoff && !(submit->bos[i].flags & BO_VALID))
  submit->bos[i].iova = 0;

 submit->bos[i].flags &= ~(BO_LOCKED | BO_PINNED);
}
