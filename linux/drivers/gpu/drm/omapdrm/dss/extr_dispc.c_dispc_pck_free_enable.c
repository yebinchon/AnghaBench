
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;


 int DISPC_CONTROL ;
 int FEAT_PCKFREEENABLE ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 int dispc_has_feature (struct dispc_device*,int ) ;

void dispc_pck_free_enable(struct dispc_device *dispc, bool enable)
{
 if (!dispc_has_feature(dispc, FEAT_PCKFREEENABLE))
  return;

 REG_FLD_MOD(dispc, DISPC_CONTROL, enable ? 1 : 0, 27, 27);
}
