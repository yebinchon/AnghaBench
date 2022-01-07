
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;


 int objects_lookup (struct drm_file*,int *,int,struct drm_gem_object**) ;

struct drm_gem_object *
drm_gem_object_lookup(struct drm_file *filp, u32 handle)
{
 struct drm_gem_object *obj = ((void*)0);

 objects_lookup(filp, &handle, 1, &obj);
 return obj;
}
