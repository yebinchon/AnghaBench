
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gem_object {int lock; } ;
struct drm_gem_object {int import_attach; } ;


 int etnaviv_gem_put_pages (struct etnaviv_gem_object*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct etnaviv_gem_object* to_etnaviv_bo (struct drm_gem_object*) ;

void etnaviv_gem_prime_unpin(struct drm_gem_object *obj)
{
 if (!obj->import_attach) {
  struct etnaviv_gem_object *etnaviv_obj = to_etnaviv_bo(obj);

  mutex_lock(&etnaviv_obj->lock);
  etnaviv_gem_put_pages(to_etnaviv_bo(obj));
  mutex_unlock(&etnaviv_obj->lock);
 }
}
