
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int FEAT_ALPHA_FREE_ZORDER ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 int dispc_get_num_ovls (struct dispc_device*) ;
 int dispc_has_feature (struct dispc_device*,int ) ;

__attribute__((used)) static void dispc_ovl_enable_zorder_planes(struct dispc_device *dispc)
{
 int i;

 if (!dispc_has_feature(dispc, FEAT_ALPHA_FREE_ZORDER))
  return;

 for (i = 0; i < dispc_get_num_ovls(dispc); i++)
  REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(i), 1, 25, 25);
}
