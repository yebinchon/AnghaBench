
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int DSSDBG (char*,int,int) ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int ,int ) ;

__attribute__((used)) static int dispc_ovl_enable(struct dispc_device *dispc,
       enum omap_plane_id plane, bool enable)
{
 DSSDBG("dispc_enable_plane %d, %d\n", plane, enable);

 REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane), enable ? 1 : 0, 0, 0);

 return 0;
}
