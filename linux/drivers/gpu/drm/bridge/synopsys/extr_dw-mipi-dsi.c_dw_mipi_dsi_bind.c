
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {int bridge; } ;
struct drm_encoder {int dummy; } ;


 int DRM_ERROR (char*) ;
 int drm_bridge_attach (struct drm_encoder*,int *,int *) ;

int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi, struct drm_encoder *encoder)
{
 int ret;

 ret = drm_bridge_attach(encoder, &dsi->bridge, ((void*)0));
 if (ret) {
  DRM_ERROR("Failed to initialize bridge with drm\n");
  return ret;
 }

 return ret;
}
