
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vcnl4035_data {TYPE_3__* client; TYPE_4__* drdy_trigger0; } ;
struct TYPE_8__ {int parent; } ;
struct iio_dev {TYPE_2__ dev; int id; int name; } ;
struct TYPE_7__ {int parent; } ;
struct TYPE_10__ {int * ops; TYPE_1__ dev; } ;
struct TYPE_9__ {int irq; int dev; } ;


 int ENOMEM ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int VCNL4035_IRQ_NAME ;
 int dev_err (int *,char*,...) ;
 TYPE_4__* devm_iio_trigger_alloc (int ,char*,int ,int ) ;
 int devm_iio_trigger_register (int ,TYPE_4__*) ;
 int devm_iio_triggered_buffer_setup (int ,struct iio_dev*,int *,int ,int *) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,int ,struct iio_dev*) ;
 struct vcnl4035_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_set_drvdata (TYPE_4__*,struct iio_dev*) ;
 int iio_triggered_buffer_setup_ops ;
 int vcnl4035_drdy_irq_thread ;
 int vcnl4035_trigger_consumer_handler ;
 int vcnl4035_trigger_ops ;

__attribute__((used)) static int vcnl4035_probe_trigger(struct iio_dev *indio_dev)
{
 int ret;
 struct vcnl4035_data *data = iio_priv(indio_dev);

 data->drdy_trigger0 = devm_iio_trigger_alloc(
   indio_dev->dev.parent,
   "%s-dev%d", indio_dev->name, indio_dev->id);
 if (!data->drdy_trigger0)
  return -ENOMEM;

 data->drdy_trigger0->dev.parent = indio_dev->dev.parent;
 data->drdy_trigger0->ops = &vcnl4035_trigger_ops;
 iio_trigger_set_drvdata(data->drdy_trigger0, indio_dev);
 ret = devm_iio_trigger_register(indio_dev->dev.parent,
     data->drdy_trigger0);
 if (ret) {
  dev_err(&data->client->dev, "iio trigger register failed\n");
  return ret;
 }


 ret = devm_iio_triggered_buffer_setup(indio_dev->dev.parent, indio_dev,
     ((void*)0), vcnl4035_trigger_consumer_handler,
     &iio_triggered_buffer_setup_ops);
 if (ret < 0) {
  dev_err(&data->client->dev, "iio triggered buffer setup failed\n");
  return ret;
 }


 ret = devm_request_threaded_irq(&data->client->dev, data->client->irq,
   ((void*)0), vcnl4035_drdy_irq_thread,
   IRQF_TRIGGER_LOW | IRQF_ONESHOT,
   VCNL4035_IRQ_NAME, indio_dev);
 if (ret < 0)
  dev_err(&data->client->dev, "request irq %d for trigger0 failed\n",
    data->client->irq);
 return ret;
}
