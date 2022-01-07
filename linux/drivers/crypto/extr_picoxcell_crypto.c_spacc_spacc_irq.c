
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spacc_engine {scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ SPA_IRQ_STAT_REG_OFFSET ;
 int readl (scalar_t__) ;
 int spacc_process_done (struct spacc_engine*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t spacc_spacc_irq(int irq, void *dev)
{
 struct spacc_engine *engine = (struct spacc_engine *)dev;
 u32 spacc_irq_stat = readl(engine->regs + SPA_IRQ_STAT_REG_OFFSET);

 writel(spacc_irq_stat, engine->regs + SPA_IRQ_STAT_REG_OFFSET);
 spacc_process_done(engine);

 return IRQ_HANDLED;
}
