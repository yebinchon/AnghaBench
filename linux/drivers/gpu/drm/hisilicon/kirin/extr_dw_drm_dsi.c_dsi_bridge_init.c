
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct dw_dsi {struct drm_bridge* bridge; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;
struct drm_bridge {int dummy; } ;


 int DRM_ERROR (char*) ;
 int drm_bridge_attach (struct drm_encoder*,struct drm_bridge*,int *) ;

__attribute__((used)) static int dsi_bridge_init(struct drm_device *dev, struct dw_dsi *dsi)
{
 struct drm_encoder *encoder = &dsi->encoder;
 struct drm_bridge *bridge = dsi->bridge;
 int ret;


 ret = drm_bridge_attach(encoder, bridge, ((void*)0));
 if (ret) {
  DRM_ERROR("failed to attach external bridge\n");
  return ret;
 }

 return 0;
}
