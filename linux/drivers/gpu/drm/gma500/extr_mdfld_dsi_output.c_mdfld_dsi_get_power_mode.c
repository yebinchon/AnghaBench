
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdfld_dsi_config {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int mdfld_dsi_get_panel_status (struct mdfld_dsi_config*,int,int *,int) ;

int mdfld_dsi_get_power_mode(struct mdfld_dsi_config *dsi_config, u32 *mode,
   bool hs)
{
 if (!dsi_config || !mode) {
  DRM_ERROR("Invalid parameter\n");
  return -EINVAL;
 }

 return mdfld_dsi_get_panel_status(dsi_config, 0x0a, mode, hs);
}
