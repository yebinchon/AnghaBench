
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int DISPC_OVL_FIR_COEF_H (int,int) ;
 int dispc_write_reg (struct dispc_device*,int ,int ) ;

__attribute__((used)) static void dispc_ovl_write_firh_reg(struct dispc_device *dispc,
         enum omap_plane_id plane, int reg,
         u32 value)
{
 dispc_write_reg(dispc, DISPC_OVL_FIR_COEF_H(plane, reg), value);
}
