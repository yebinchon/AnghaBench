
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_gem_object {int flags; } ;
struct drm_gem_object {int dummy; } ;


 int OMAP_BO_CACHED ;
 int OMAP_BO_CACHE_MASK ;
 int OMAP_BO_MEM_SHMEM ;
 struct omap_gem_object* to_omap_bo (struct drm_gem_object*) ;

__attribute__((used)) static inline bool omap_gem_is_cached_coherent(struct drm_gem_object *obj)
{
 struct omap_gem_object *omap_obj = to_omap_bo(obj);

 return !((omap_obj->flags & OMAP_BO_MEM_SHMEM) &&
  ((omap_obj->flags & OMAP_BO_CACHE_MASK) == OMAP_BO_CACHED));
}
