
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_driver_data {int enabled; int enabled_mutex; int attn_fifo; } ;
struct rmi_device_platform_data {int irq; } ;
struct rmi_device {int dev; TYPE_1__* xport; } ;
struct rmi4_attn_data {int data; int member_0; } ;
struct TYPE_2__ {int dev; } ;


 struct rmi_driver_data* dev_get_drvdata (int *) ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ device_may_wakeup (int ) ;
 int disable_irq (int) ;
 int enable_irq_wake (int) ;
 int kfifo_get (int *,struct rmi4_attn_data*) ;
 int kfifo_is_empty (int *) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rmi_device_platform_data* rmi_get_platform_data (struct rmi_device*) ;

void rmi_disable_irq(struct rmi_device *rmi_dev, bool enable_wake)
{
 struct rmi_device_platform_data *pdata = rmi_get_platform_data(rmi_dev);
 struct rmi_driver_data *data = dev_get_drvdata(&rmi_dev->dev);
 struct rmi4_attn_data attn_data = {0};
 int irq = pdata->irq;
 int retval, count;

 mutex_lock(&data->enabled_mutex);

 if (!data->enabled)
  goto out;

 data->enabled = 0;
 disable_irq(irq);
 if (enable_wake && device_may_wakeup(rmi_dev->xport->dev)) {
  retval = enable_irq_wake(irq);
  if (retval)
   dev_warn(&rmi_dev->dev,
     "Failed to enable irq for wake: %d\n",
     retval);
 }


 while (!kfifo_is_empty(&data->attn_fifo)) {
  count = kfifo_get(&data->attn_fifo, &attn_data);
  if (count)
   kfree(attn_data.data);
 }

out:
 mutex_unlock(&data->enabled_mutex);
}
