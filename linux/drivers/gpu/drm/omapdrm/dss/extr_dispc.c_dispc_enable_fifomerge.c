
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;


 int DISPC_CONFIG ;
 int DSSDBG (char*,char*) ;
 int FEAT_FIFO_MERGE ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 int WARN_ON (int) ;
 int dispc_has_feature (struct dispc_device*,int ) ;

void dispc_enable_fifomerge(struct dispc_device *dispc, bool enable)
{
 if (!dispc_has_feature(dispc, FEAT_FIFO_MERGE)) {
  WARN_ON(enable);
  return;
 }

 DSSDBG("FIFO merge %s\n", enable ? "enabled" : "disabled");
 REG_FLD_MOD(dispc, DISPC_CONFIG, enable ? 1 : 0, 14, 14);
}
