
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_config {int dummy; } ;


 int DRM_ERROR (char*) ;
 int mdfld_dsi_dpi_controller_init (struct mdfld_dsi_config*,int) ;

void mdfld_dsi_controller_init(struct mdfld_dsi_config *dsi_config, int pipe)
{
 if (!dsi_config || ((pipe != 0) && (pipe != 2))) {
  DRM_ERROR("Invalid parameters\n");
  return;
 }

 mdfld_dsi_dpi_controller_init(dsi_config, pipe);
}
