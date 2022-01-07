
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etnaviv_gem_object {void* vaddr; int lock; TYPE_1__* ops; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_2__ {void* (* vmap ) (struct etnaviv_gem_object*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* stub1 (struct etnaviv_gem_object*) ;
 struct etnaviv_gem_object* to_etnaviv_bo (struct drm_gem_object*) ;

void *etnaviv_gem_vmap(struct drm_gem_object *obj)
{
 struct etnaviv_gem_object *etnaviv_obj = to_etnaviv_bo(obj);

 if (etnaviv_obj->vaddr)
  return etnaviv_obj->vaddr;

 mutex_lock(&etnaviv_obj->lock);




 if (!etnaviv_obj->vaddr)
  etnaviv_obj->vaddr = etnaviv_obj->ops->vmap(etnaviv_obj);
 mutex_unlock(&etnaviv_obj->lock);

 return etnaviv_obj->vaddr;
}
