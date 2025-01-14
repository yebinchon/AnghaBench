
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int OMAP_DSS_WB ;
 unsigned long dispc_mgr_pclk_rate (struct dispc_device*,int) ;
 int dispc_ovl_get_channel_out (struct dispc_device*,int) ;

__attribute__((used)) static unsigned long dispc_plane_pclk_rate(struct dispc_device *dispc,
        enum omap_plane_id plane)
{
 enum omap_channel channel;

 if (plane == OMAP_DSS_WB)
  return 0;

 channel = dispc_ovl_get_channel_out(dispc, plane);

 return dispc_mgr_pclk_rate(dispc, channel);
}
