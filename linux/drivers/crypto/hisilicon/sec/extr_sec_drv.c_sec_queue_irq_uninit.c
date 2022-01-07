
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue {int task_irq; } ;


 int free_irq (int ,struct sec_queue*) ;

__attribute__((used)) static int sec_queue_irq_uninit(struct sec_queue *queue)
{
 free_irq(queue->task_irq, queue);

 return 0;
}
