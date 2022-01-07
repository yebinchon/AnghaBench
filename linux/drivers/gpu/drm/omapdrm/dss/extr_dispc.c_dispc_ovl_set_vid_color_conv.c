
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG_ON (int) ;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int FLD_MOD (int ,int,int,int) ;
 int OMAP_DSS_GFX ;
 int dispc_read_reg (struct dispc_device*,int ) ;
 int dispc_write_reg (struct dispc_device*,int ,int ) ;

__attribute__((used)) static void dispc_ovl_set_vid_color_conv(struct dispc_device *dispc,
      enum omap_plane_id plane, bool enable)
{
 u32 val;

 BUG_ON(plane == OMAP_DSS_GFX);

 val = dispc_read_reg(dispc, DISPC_OVL_ATTRIBUTES(plane));
 val = FLD_MOD(val, enable, 9, 9);
 dispc_write_reg(dispc, DISPC_OVL_ATTRIBUTES(plane), val);
}
