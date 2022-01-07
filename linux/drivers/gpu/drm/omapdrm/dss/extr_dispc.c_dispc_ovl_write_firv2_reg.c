
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG_ON (int) ;
 int DISPC_OVL_FIR_COEF_V2 (int,int) ;
 int OMAP_DSS_GFX ;
 int dispc_write_reg (struct dispc_device*,int ,int ) ;

__attribute__((used)) static void dispc_ovl_write_firv2_reg(struct dispc_device *dispc,
          enum omap_plane_id plane, int reg,
          u32 value)
{
 BUG_ON(plane == OMAP_DSS_GFX);

 dispc_write_reg(dispc, DISPC_OVL_FIR_COEF_V2(plane, reg), value);
}
