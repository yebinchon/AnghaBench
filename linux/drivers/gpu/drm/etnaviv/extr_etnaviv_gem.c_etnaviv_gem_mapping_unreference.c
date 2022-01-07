
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_vram_mapping {scalar_t__ use; struct etnaviv_gem_object* object; } ;
struct etnaviv_gem_object {int base; int lock; } ;


 int WARN_ON (int) ;
 int drm_gem_object_put_unlocked (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void etnaviv_gem_mapping_unreference(struct etnaviv_vram_mapping *mapping)
{
 struct etnaviv_gem_object *etnaviv_obj = mapping->object;

 mutex_lock(&etnaviv_obj->lock);
 WARN_ON(mapping->use == 0);
 mapping->use -= 1;
 mutex_unlock(&etnaviv_obj->lock);

 drm_gem_object_put_unlocked(&etnaviv_obj->base);
}
