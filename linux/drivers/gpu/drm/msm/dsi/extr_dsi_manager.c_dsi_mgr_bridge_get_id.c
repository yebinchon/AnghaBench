
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_bridge {int id; } ;
struct drm_bridge {int dummy; } ;


 struct dsi_bridge* to_dsi_bridge (struct drm_bridge*) ;

__attribute__((used)) static int dsi_mgr_bridge_get_id(struct drm_bridge *bridge)
{
 struct dsi_bridge *dsi_bridge = to_dsi_bridge(bridge);
 return dsi_bridge->id;
}
