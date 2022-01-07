
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue {scalar_t__ regs; int task_irq; } ;


 scalar_t__ SEC_QUEUE_ENB_REG ;
 int disable_irq (int ) ;
 int sec_queue_irq_disable (struct sec_queue*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sec_queue_stop(struct sec_queue *queue)
{
 disable_irq(queue->task_irq);
 sec_queue_irq_disable(queue);
 writel_relaxed(0x0, queue->regs + SEC_QUEUE_ENB_REG);
}
