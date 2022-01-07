
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct etnaviv_gem_submit {TYPE_3__* bos; } ;
struct drm_gem_object {TYPE_2__* resv; } ;
struct TYPE_6__ {int flags; TYPE_1__* obj; } ;
struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {struct drm_gem_object base; } ;


 int BO_LOCKED ;
 int ww_mutex_unlock (int *) ;

__attribute__((used)) static void submit_unlock_object(struct etnaviv_gem_submit *submit, int i)
{
 if (submit->bos[i].flags & BO_LOCKED) {
  struct drm_gem_object *obj = &submit->bos[i].obj->base;

  ww_mutex_unlock(&obj->resv->lock);
  submit->bos[i].flags &= ~BO_LOCKED;
 }
}
