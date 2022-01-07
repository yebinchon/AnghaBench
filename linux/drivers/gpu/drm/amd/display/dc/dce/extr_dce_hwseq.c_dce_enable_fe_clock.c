
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_hwseq {int dummy; } ;


 int * DCFE_CLOCK_CONTROL ;
 int DCFE_CLOCK_ENABLE ;
 int REG_UPDATE (int ,int ,int) ;

void dce_enable_fe_clock(struct dce_hwseq *hws,
  unsigned int fe_inst, bool enable)
{
 REG_UPDATE(DCFE_CLOCK_CONTROL[fe_inst],
   DCFE_CLOCK_ENABLE, enable);
}
