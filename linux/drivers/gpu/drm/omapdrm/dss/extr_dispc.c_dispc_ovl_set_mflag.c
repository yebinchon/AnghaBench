
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int OMAP_DSS_GFX ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;

__attribute__((used)) static void dispc_ovl_set_mflag(struct dispc_device *dispc,
    enum omap_plane_id plane, bool enable)
{
 int bit;

 if (plane == OMAP_DSS_GFX)
  bit = 14;
 else
  bit = 23;

 REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane), enable, bit, bit);
}
