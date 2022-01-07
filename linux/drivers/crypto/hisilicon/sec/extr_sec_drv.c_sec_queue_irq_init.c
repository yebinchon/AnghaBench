
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue {int task_irq; int name; struct sec_dev_info* dev_info; } ;
struct sec_dev_info {int dev; } ;


 int IRQF_TRIGGER_RISING ;
 int dev_err (int ,char*,int,int) ;
 int disable_irq (int) ;
 int request_threaded_irq (int,int ,int ,int ,int ,struct sec_queue*) ;
 int sec_isr_handle ;
 int sec_isr_handle_th ;

__attribute__((used)) static int sec_queue_irq_init(struct sec_queue *queue)
{
 struct sec_dev_info *info = queue->dev_info;
 int irq = queue->task_irq;
 int ret;

 ret = request_threaded_irq(irq, sec_isr_handle_th, sec_isr_handle,
       IRQF_TRIGGER_RISING, queue->name, queue);
 if (ret) {
  dev_err(info->dev, "request irq(%d) failed %d\n", irq, ret);
  return ret;
 }
 disable_irq(irq);

 return 0;
}
