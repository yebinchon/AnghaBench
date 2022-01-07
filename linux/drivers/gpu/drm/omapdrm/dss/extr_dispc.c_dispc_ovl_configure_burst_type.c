
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
typedef enum omap_dss_rotation_type { ____Placeholder_omap_dss_rotation_type } omap_dss_rotation_type ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int FEAT_BURST_2D ;
 int OMAP_DSS_ROT_TILER ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 scalar_t__ dispc_has_feature (struct dispc_device*,int ) ;

__attribute__((used)) static void dispc_ovl_configure_burst_type(struct dispc_device *dispc,
        enum omap_plane_id plane,
        enum omap_dss_rotation_type rotation)
{
 if (dispc_has_feature(dispc, FEAT_BURST_2D) == 0)
  return;

 if (rotation == OMAP_DSS_ROT_TILER)
  REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane), 1, 29, 29);
 else
  REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane), 0, 29, 29);
}
