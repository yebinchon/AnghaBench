
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sec_queue {scalar_t__ regs; } ;


 scalar_t__ SEC_Q_FLOW_INT_MKS_REG ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sec_queue_irq_disable(struct sec_queue *queue)
{
 writel_relaxed((u32)~0, queue->regs + SEC_Q_FLOW_INT_MKS_REG);
}
