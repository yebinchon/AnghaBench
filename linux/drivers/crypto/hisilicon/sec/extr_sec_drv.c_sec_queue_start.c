
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue {scalar_t__ regs; scalar_t__ expected; int task_irq; } ;


 scalar_t__ SEC_QUEUE_ENB_REG ;
 int SEC_Q_INIT_AND_STAT_CLEAR ;
 scalar_t__ SEC_Q_INIT_REG ;
 int enable_irq (int ) ;
 int sec_queue_irq_enable (struct sec_queue*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sec_queue_start(struct sec_queue *queue)
{
 sec_queue_irq_enable(queue);
 enable_irq(queue->task_irq);
 queue->expected = 0;
 writel_relaxed(SEC_Q_INIT_AND_STAT_CLEAR, queue->regs + SEC_Q_INIT_REG);
 writel_relaxed(0x1, queue->regs + SEC_QUEUE_ENB_REG);
}
