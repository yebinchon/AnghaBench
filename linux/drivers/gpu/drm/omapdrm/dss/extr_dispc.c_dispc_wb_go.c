
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int DISPC_CONTROL2 ;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int DSSERR (char*) ;
 int OMAP_DSS_WB ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 int REG_GET (struct dispc_device*,int ,int,int) ;

__attribute__((used)) static void dispc_wb_go(struct dispc_device *dispc)
{
 enum omap_plane_id plane = OMAP_DSS_WB;
 bool enable, go;

 enable = REG_GET(dispc, DISPC_OVL_ATTRIBUTES(plane), 0, 0) == 1;

 if (!enable)
  return;

 go = REG_GET(dispc, DISPC_CONTROL2, 6, 6) == 1;
 if (go) {
  DSSERR("GO bit not down for WB\n");
  return;
 }

 REG_FLD_MOD(dispc, DISPC_CONTROL2, 1, 6, 6);
}
