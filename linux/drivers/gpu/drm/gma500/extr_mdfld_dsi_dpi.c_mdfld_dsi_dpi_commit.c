
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int mdfld_dsi_dpi_set_power (struct drm_encoder*,int) ;

void mdfld_dsi_dpi_commit(struct drm_encoder *encoder)
{
 mdfld_dsi_dpi_set_power(encoder, 1);
}
