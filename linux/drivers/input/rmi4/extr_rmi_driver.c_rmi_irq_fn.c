
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi4_attn_data {int * data; int irq_status; int member_0; } ;
struct rmi_driver_data {int attn_fifo; struct rmi4_attn_data attn_data; int * irq_status; } ;
struct rmi_device {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RMI_DEBUG_CORE ;
 struct rmi_driver_data* dev_get_drvdata (int *) ;
 int kfifo_get (int *,struct rmi4_attn_data*) ;
 int kfifo_is_empty (int *) ;
 int kfree (int *) ;
 int rmi_dbg (int ,int *,char*,int) ;
 int rmi_process_interrupt_requests (struct rmi_device*) ;

__attribute__((used)) static irqreturn_t rmi_irq_fn(int irq, void *dev_id)
{
 struct rmi_device *rmi_dev = dev_id;
 struct rmi_driver_data *drvdata = dev_get_drvdata(&rmi_dev->dev);
 struct rmi4_attn_data attn_data = {0};
 int ret, count;

 count = kfifo_get(&drvdata->attn_fifo, &attn_data);
 if (count) {
  *(drvdata->irq_status) = attn_data.irq_status;
  drvdata->attn_data = attn_data;
 }

 ret = rmi_process_interrupt_requests(rmi_dev);
 if (ret)
  rmi_dbg(RMI_DEBUG_CORE, &rmi_dev->dev,
   "Failed to process interrupt request: %d\n", ret);

 if (count) {
  kfree(attn_data.data);
  attn_data.data = ((void*)0);
 }

 if (!kfifo_is_empty(&drvdata->attn_fifo))
  return rmi_irq_fn(irq, dev_id);

 return IRQ_HANDLED;
}
