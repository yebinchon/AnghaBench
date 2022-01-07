
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct etnaviv_gem_submit {int nr_bos; int out_fence; TYPE_2__* bos; } ;
struct drm_gem_object {int resv; } ;
struct TYPE_4__ {int flags; TYPE_1__* obj; } ;
struct TYPE_3__ {struct drm_gem_object base; } ;


 int ETNA_SUBMIT_BO_WRITE ;
 int dma_resv_add_excl_fence (int ,int ) ;
 int dma_resv_add_shared_fence (int ,int ) ;
 int submit_unlock_object (struct etnaviv_gem_submit*,int) ;

__attribute__((used)) static void submit_attach_object_fences(struct etnaviv_gem_submit *submit)
{
 int i;

 for (i = 0; i < submit->nr_bos; i++) {
  struct drm_gem_object *obj = &submit->bos[i].obj->base;

  if (submit->bos[i].flags & ETNA_SUBMIT_BO_WRITE)
   dma_resv_add_excl_fence(obj->resv,
         submit->out_fence);
  else
   dma_resv_add_shared_fence(obj->resv,
           submit->out_fence);

  submit_unlock_object(submit, i);
 }
}
