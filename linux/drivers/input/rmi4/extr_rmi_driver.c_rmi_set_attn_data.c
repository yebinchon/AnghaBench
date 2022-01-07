
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_driver_data {int attn_fifo; int enabled; } ;
struct rmi_device {int dev; } ;
struct rmi4_attn_data {unsigned long irq_status; size_t size; void* data; } ;


 int GFP_ATOMIC ;
 struct rmi_driver_data* dev_get_drvdata (int *) ;
 int kfifo_put (int *,struct rmi4_attn_data) ;
 void* kmemdup (void*,size_t,int ) ;

void rmi_set_attn_data(struct rmi_device *rmi_dev, unsigned long irq_status,
         void *data, size_t size)
{
 struct rmi_driver_data *drvdata = dev_get_drvdata(&rmi_dev->dev);
 struct rmi4_attn_data attn_data;
 void *fifo_data;

 if (!drvdata->enabled)
  return;

 fifo_data = kmemdup(data, size, GFP_ATOMIC);
 if (!fifo_data)
  return;

 attn_data.irq_status = irq_status;
 attn_data.size = size;
 attn_data.data = fifo_data;

 kfifo_put(&drvdata->attn_fifo, attn_data);
}
