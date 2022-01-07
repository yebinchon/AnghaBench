
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mdfld_dsi_pkg_sender {int dummy; } ;
struct mdfld_dsi_config {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 struct mdfld_dsi_pkg_sender* mdfld_dsi_get_pkg_sender (struct mdfld_dsi_config*) ;
 int mdfld_dsi_read_mcs (struct mdfld_dsi_pkg_sender*,int ,int *,int,int) ;

__attribute__((used)) static int mdfld_dsi_get_panel_status(struct mdfld_dsi_config *dsi_config,
    u8 dcs, u32 *data, bool hs)
{
 struct mdfld_dsi_pkg_sender *sender
  = mdfld_dsi_get_pkg_sender(dsi_config);

 if (!sender || !data) {
  DRM_ERROR("Invalid parameter\n");
  return -EINVAL;
 }

 return mdfld_dsi_read_mcs(sender, dcs, data, 1, hs);
}
