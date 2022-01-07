
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_panel {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct drm_bridge* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct drm_bridge*) ;
 int devm_drm_panel_bridge_release ;
 int devres_add (struct device*,struct drm_bridge**) ;
 struct drm_bridge** devres_alloc (int ,int,int ) ;
 int devres_free (struct drm_bridge**) ;
 struct drm_bridge* drm_panel_bridge_add (struct drm_panel*,int ) ;

struct drm_bridge *devm_drm_panel_bridge_add(struct device *dev,
          struct drm_panel *panel,
          u32 connector_type)
{
 struct drm_bridge **ptr, *bridge;

 ptr = devres_alloc(devm_drm_panel_bridge_release, sizeof(*ptr),
      GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 bridge = drm_panel_bridge_add(panel, connector_type);
 if (!IS_ERR(bridge)) {
  *ptr = bridge;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return bridge;
}
