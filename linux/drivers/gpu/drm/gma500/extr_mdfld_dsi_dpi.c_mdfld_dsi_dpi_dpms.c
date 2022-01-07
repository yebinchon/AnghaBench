
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int DRM_MODE_DPMS_ON ;
 int mdfld_dsi_dpi_set_power (struct drm_encoder*,int) ;

void mdfld_dsi_dpi_dpms(struct drm_encoder *encoder, int mode)
{
 mdfld_dsi_dpi_set_power(encoder, mode == DRM_MODE_DPMS_ON);
}
