
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_gem_object {int flags; int height; int width; } ;
struct drm_gem_object {size_t size; } ;


 int OMAP_BO_TILED ;
 int gem2fmt (int) ;
 size_t tiler_vsize (int ,int ,int ) ;
 struct omap_gem_object* to_omap_bo (struct drm_gem_object*) ;

size_t omap_gem_mmap_size(struct drm_gem_object *obj)
{
 struct omap_gem_object *omap_obj = to_omap_bo(obj);
 size_t size = obj->size;

 if (omap_obj->flags & OMAP_BO_TILED) {






  size = tiler_vsize(gem2fmt(omap_obj->flags),
    omap_obj->width, omap_obj->height);
 }

 return size;
}
