
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct armada_gem_object {int dummy; } ;


 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,unsigned int) ;
 struct armada_gem_object* drm_to_armada_gem (struct drm_gem_object*) ;

__attribute__((used)) static inline struct armada_gem_object *armada_gem_object_lookup(
 struct drm_file *dfile, unsigned handle)
{
 struct drm_gem_object *obj = drm_gem_object_lookup(dfile, handle);

 return obj ? drm_to_armada_gem(obj) : ((void*)0);
}
