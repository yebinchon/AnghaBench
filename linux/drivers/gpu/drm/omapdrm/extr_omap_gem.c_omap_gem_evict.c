
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_gem_object {int flags; } ;
struct omap_drm_usergart_entry {struct drm_gem_object* obj; } ;
struct omap_drm_private {TYPE_1__* usergart; } ;
struct drm_gem_object {TYPE_2__* dev; } ;
typedef enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;
struct TYPE_4__ {struct omap_drm_private* dev_private; } ;
struct TYPE_3__ {struct omap_drm_usergart_entry* entry; } ;


 int NUM_USERGART_ENTRIES ;
 int OMAP_BO_TILED ;
 int gem2fmt (int) ;
 int omap_gem_evict_entry (struct drm_gem_object*,int,struct omap_drm_usergart_entry*) ;
 struct omap_gem_object* to_omap_bo (struct drm_gem_object*) ;

__attribute__((used)) static void omap_gem_evict(struct drm_gem_object *obj)
{
 struct omap_gem_object *omap_obj = to_omap_bo(obj);
 struct omap_drm_private *priv = obj->dev->dev_private;

 if (omap_obj->flags & OMAP_BO_TILED) {
  enum tiler_fmt fmt = gem2fmt(omap_obj->flags);
  int i;

  for (i = 0; i < NUM_USERGART_ENTRIES; i++) {
   struct omap_drm_usergart_entry *entry =
    &priv->usergart[fmt].entry[i];

   if (entry->obj == obj)
    omap_gem_evict_entry(obj, fmt, entry);
  }
 }
}
