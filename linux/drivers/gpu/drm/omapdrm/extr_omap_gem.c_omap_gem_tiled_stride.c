
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_gem_object {int flags; } ;
struct drm_gem_object {int dummy; } ;


 int EINVAL ;
 int OMAP_BO_TILED ;
 int gem2fmt (int) ;
 int tiler_stride (int ,int ) ;
 struct omap_gem_object* to_omap_bo (struct drm_gem_object*) ;

int omap_gem_tiled_stride(struct drm_gem_object *obj, u32 orient)
{
 struct omap_gem_object *omap_obj = to_omap_bo(obj);
 int ret = -EINVAL;
 if (omap_obj->flags & OMAP_BO_TILED)
  ret = tiler_stride(gem2fmt(omap_obj->flags), orient);
 return ret;
}
