
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_gem_submit {int nr_bos; TYPE_1__* ring; TYPE_2__* bos; } ;
struct TYPE_6__ {int resv; } ;
struct msm_gem_object {TYPE_3__ base; } ;
struct TYPE_5__ {int flags; struct msm_gem_object* obj; } ;
struct TYPE_4__ {int fctx; } ;


 int MSM_SUBMIT_BO_WRITE ;
 int dma_resv_reserve_shared (int ,int) ;
 int msm_gem_sync_object (TYPE_3__*,int ,int) ;

__attribute__((used)) static int submit_fence_sync(struct msm_gem_submit *submit, bool no_implicit)
{
 int i, ret = 0;

 for (i = 0; i < submit->nr_bos; i++) {
  struct msm_gem_object *msm_obj = submit->bos[i].obj;
  bool write = submit->bos[i].flags & MSM_SUBMIT_BO_WRITE;

  if (!write) {





   ret = dma_resv_reserve_shared(msm_obj->base.resv,
        1);
   if (ret)
    return ret;
  }

  if (no_implicit)
   continue;

  ret = msm_gem_sync_object(&msm_obj->base, submit->ring->fctx,
   write);
  if (ret)
   break;
 }

 return ret;
}
