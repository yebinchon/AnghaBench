
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sg_table {struct scatterlist* sgl; } ;
struct scatterlist {scalar_t__ length; } ;
struct TYPE_4__ {int fb; } ;
struct malidp_plane_state {int n_planes; TYPE_1__ base; } ;
struct drm_gem_object {TYPE_3__* dev; } ;
struct drm_gem_cma_object {struct sg_table* sgt; } ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {struct sg_table* (* gem_prime_get_sg_table ) (struct drm_gem_object*) ;} ;


 struct drm_gem_object* drm_gem_fb_get_obj (int ,int) ;
 int kfree (struct sg_table*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 struct sg_table* stub1 (struct drm_gem_object*) ;
 struct drm_gem_cma_object* to_drm_gem_cma_obj (struct drm_gem_object*) ;

__attribute__((used)) static bool malidp_check_pages_threshold(struct malidp_plane_state *ms,
      u32 pgsize)
{
 int i;

 for (i = 0; i < ms->n_planes; i++) {
  struct drm_gem_object *obj;
  struct drm_gem_cma_object *cma_obj;
  struct sg_table *sgt;
  struct scatterlist *sgl;

  obj = drm_gem_fb_get_obj(ms->base.fb, i);
  cma_obj = to_drm_gem_cma_obj(obj);

  if (cma_obj->sgt)
   sgt = cma_obj->sgt;
  else
   sgt = obj->dev->driver->gem_prime_get_sg_table(obj);

  if (!sgt)
   return 0;

  sgl = sgt->sgl;

  while (sgl) {
   if (sgl->length < pgsize) {
    if (!cma_obj->sgt)
     kfree(sgt);
    return 0;
   }

   sgl = sg_next(sgl);
  }
  if (!cma_obj->sgt)
   kfree(sgt);
 }

 return 1;
}
