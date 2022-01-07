
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dp_device {int dev; scalar_t__ ptn_bridge; int encoder; struct drm_connector* connector; } ;
struct drm_connector {int dummy; } ;
struct drm_bridge {int * next; } ;
struct analogix_dp_plat_data {int dummy; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int drm_bridge_attach (int *,scalar_t__,struct drm_bridge*) ;
 struct exynos_dp_device* to_dp (struct analogix_dp_plat_data*) ;

__attribute__((used)) static int exynos_dp_bridge_attach(struct analogix_dp_plat_data *plat_data,
       struct drm_bridge *bridge,
       struct drm_connector *connector)
{
 struct exynos_dp_device *dp = to_dp(plat_data);
 int ret;

 dp->connector = connector;


 if (dp->ptn_bridge) {
  ret = drm_bridge_attach(&dp->encoder, dp->ptn_bridge, bridge);
  if (ret) {
   DRM_DEV_ERROR(dp->dev,
          "Failed to attach bridge to drm\n");
   bridge->next = ((void*)0);
   return ret;
  }
 }

 return 0;
}
