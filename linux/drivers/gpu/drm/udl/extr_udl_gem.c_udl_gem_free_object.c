
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udl_gem_object {scalar_t__ pages; int sg; scalar_t__ vmapping; } ;
struct drm_gem_object {TYPE_1__* dev; scalar_t__ import_attach; } ;
struct TYPE_2__ {int dev; } ;


 int drm_gem_free_mmap_offset (struct drm_gem_object*) ;
 int drm_prime_gem_destroy (struct drm_gem_object*,int ) ;
 int put_device (int ) ;
 struct udl_gem_object* to_udl_bo (struct drm_gem_object*) ;
 int udl_gem_put_pages (struct udl_gem_object*) ;
 int udl_gem_vunmap (struct udl_gem_object*) ;

void udl_gem_free_object(struct drm_gem_object *gem_obj)
{
 struct udl_gem_object *obj = to_udl_bo(gem_obj);

 if (obj->vmapping)
  udl_gem_vunmap(obj);

 if (gem_obj->import_attach) {
  drm_prime_gem_destroy(gem_obj, obj->sg);
  put_device(gem_obj->dev->dev);
 }

 if (obj->pages)
  udl_gem_put_pages(obj);

 drm_gem_free_mmap_offset(gem_obj);
}
