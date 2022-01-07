
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef int s32 ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int DISPC_OVL_ROW_INC (int) ;
 int dispc_write_reg (struct dispc_device*,int ,int ) ;

__attribute__((used)) static void dispc_ovl_set_row_inc(struct dispc_device *dispc,
      enum omap_plane_id plane, s32 inc)
{
 dispc_write_reg(dispc, DISPC_OVL_ROW_INC(plane), inc);
}
