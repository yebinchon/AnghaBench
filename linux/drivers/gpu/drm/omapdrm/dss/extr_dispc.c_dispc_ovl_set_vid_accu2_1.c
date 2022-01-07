
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int DISPC_OVL_ACCU2_1 (int) ;
 int FLD_VAL (int,int,int) ;
 int dispc_write_reg (struct dispc_device*,int ,int) ;

__attribute__((used)) static void dispc_ovl_set_vid_accu2_1(struct dispc_device *dispc,
          enum omap_plane_id plane, int haccu,
          int vaccu)
{
 u32 val;

 val = FLD_VAL(vaccu, 26, 16) | FLD_VAL(haccu, 10, 0);
 dispc_write_reg(dispc, DISPC_OVL_ACCU2_1(plane), val);
}
