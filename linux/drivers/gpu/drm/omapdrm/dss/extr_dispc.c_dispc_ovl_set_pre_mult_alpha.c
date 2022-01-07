
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
typedef enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;

__attribute__((used)) static void dispc_ovl_set_pre_mult_alpha(struct dispc_device *dispc,
      enum omap_plane_id plane,
      enum omap_overlay_caps caps,
      bool enable)
{
 if ((caps & OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA) == 0)
  return;

 REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane), enable ? 1 : 0, 28, 28);
}
