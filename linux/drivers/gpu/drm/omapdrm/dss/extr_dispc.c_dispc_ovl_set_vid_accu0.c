
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int DISPC_OVL_ACCU0 (int) ;
 int FEAT_REG_HORIZONTALACCU ;
 int FEAT_REG_VERTICALACCU ;
 int FLD_VAL (int,int ,int ) ;
 int dispc_get_reg_field (struct dispc_device*,int ,int *,int *) ;
 int dispc_write_reg (struct dispc_device*,int ,int) ;

__attribute__((used)) static void dispc_ovl_set_vid_accu0(struct dispc_device *dispc,
        enum omap_plane_id plane, int haccu,
        int vaccu)
{
 u32 val;
 u8 hor_start, hor_end, vert_start, vert_end;

 dispc_get_reg_field(dispc, FEAT_REG_HORIZONTALACCU,
       &hor_start, &hor_end);
 dispc_get_reg_field(dispc, FEAT_REG_VERTICALACCU,
       &vert_start, &vert_end);

 val = FLD_VAL(vaccu, vert_start, vert_end) |
   FLD_VAL(haccu, hor_start, hor_end);

 dispc_write_reg(dispc, DISPC_OVL_ACCU0(plane), val);
}
