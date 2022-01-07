
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int size; } ;


 int drm_gem_create_mmap_offset_size (struct drm_gem_object*,int ) ;

int drm_gem_create_mmap_offset(struct drm_gem_object *obj)
{
 return drm_gem_create_mmap_offset_size(obj, obj->size);
}
