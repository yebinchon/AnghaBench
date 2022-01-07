
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int DISPC_OVL_MFLAG_THRESHOLD (int) ;
 int FLD_VAL (int,int,int) ;
 int dispc_write_reg (struct dispc_device*,int ,int) ;

__attribute__((used)) static void dispc_ovl_set_mflag_threshold(struct dispc_device *dispc,
       enum omap_plane_id plane,
       int low, int high)
{
 dispc_write_reg(dispc, DISPC_OVL_MFLAG_THRESHOLD(plane),
  FLD_VAL(high, 31, 16) | FLD_VAL(low, 15, 0));
}
