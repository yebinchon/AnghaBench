
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq {int clock; scalar_t__ base; } ;


 int CMDQ_MAX_EVENT ;
 scalar_t__ CMDQ_SYNC_TOKEN_UPDATE ;
 int CMDQ_THR_ACTIVE_SLOT_CYCLES ;
 scalar_t__ CMDQ_THR_SLOT_CYCLES ;
 int WARN_ON (int) ;
 int clk_disable (int ) ;
 scalar_t__ clk_enable (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cmdq_init(struct cmdq *cmdq)
{
 int i;

 WARN_ON(clk_enable(cmdq->clock) < 0);
 writel(CMDQ_THR_ACTIVE_SLOT_CYCLES, cmdq->base + CMDQ_THR_SLOT_CYCLES);
 for (i = 0; i <= CMDQ_MAX_EVENT; i++)
  writel(i, cmdq->base + CMDQ_SYNC_TOKEN_UPDATE);
 clk_disable(cmdq->clock);
}
