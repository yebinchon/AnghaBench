
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mdfld_dsi_pkg_sender {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int MIPI_DSI_DCS_READ ;
 int __read_panel_data (struct mdfld_dsi_pkg_sender*,int ,int *,int,int *,int ,int) ;

int mdfld_dsi_read_mcs(struct mdfld_dsi_pkg_sender *sender, u8 cmd,
  u32 *data, u16 len, bool hs)
{
 if (!sender || !data || !len) {
  DRM_ERROR("Invalid parameters\n");
  return -EINVAL;
 }

 return __read_panel_data(sender, MIPI_DSI_DCS_READ, &cmd, 1,
    data, len, hs);
}
