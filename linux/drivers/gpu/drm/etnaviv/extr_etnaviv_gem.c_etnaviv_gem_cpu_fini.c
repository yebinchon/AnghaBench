
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etnaviv_gem_object {int flags; scalar_t__ last_cpu_prep_op; TYPE_1__* sgt; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int dev; } ;
struct TYPE_2__ {int nents; int sgl; } ;


 int ETNA_BO_CACHED ;
 int WARN_ON (int) ;
 int dma_sync_sg_for_device (int ,int ,int ,int ) ;
 int etnaviv_op_to_dma_dir (scalar_t__) ;
 struct etnaviv_gem_object* to_etnaviv_bo (struct drm_gem_object*) ;

int etnaviv_gem_cpu_fini(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;
 struct etnaviv_gem_object *etnaviv_obj = to_etnaviv_bo(obj);

 if (etnaviv_obj->flags & ETNA_BO_CACHED) {

  WARN_ON(etnaviv_obj->last_cpu_prep_op == 0);
  dma_sync_sg_for_device(dev->dev, etnaviv_obj->sgt->sgl,
   etnaviv_obj->sgt->nents,
   etnaviv_op_to_dma_dir(etnaviv_obj->last_cpu_prep_op));
  etnaviv_obj->last_cpu_prep_op = 0;
 }

 return 0;
}
