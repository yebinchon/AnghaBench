
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int DISPC_OVL_PICTURE_SIZE (int) ;
 int DISPC_OVL_SIZE (int) ;
 int FLD_VAL (int,int,int) ;
 int OMAP_DSS_GFX ;
 int OMAP_DSS_WB ;
 int dispc_write_reg (struct dispc_device*,int ,int) ;

__attribute__((used)) static void dispc_ovl_set_input_size(struct dispc_device *dispc,
         enum omap_plane_id plane, int width,
         int height)
{
 u32 val = FLD_VAL(height - 1, 26, 16) | FLD_VAL(width - 1, 10, 0);

 if (plane == OMAP_DSS_GFX || plane == OMAP_DSS_WB)
  dispc_write_reg(dispc, DISPC_OVL_SIZE(plane), val);
 else
  dispc_write_reg(dispc, DISPC_OVL_PICTURE_SIZE(plane), val);
}
