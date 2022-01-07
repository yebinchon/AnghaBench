
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct spi_device {int dev; int irq; } ;
struct TYPE_8__ {int * parent; } ;
struct iio_dev {int modes; int name; int trig; int id; int * info; TYPE_1__ dev; int num_channels; int channels; } ;
struct ad7768_state {int completion; TYPE_4__* trig; int lock; int mclk; int mclk_freq; int vref; struct spi_device* spi; } ;
struct TYPE_9__ {int * parent; } ;
struct TYPE_11__ {TYPE_2__ dev; int * ops; } ;
struct TYPE_10__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_BUFFER_TRIGGERED ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ad7768_buffer_ops ;
 int ad7768_channels ;
 int ad7768_clk_disable ;
 int ad7768_info ;
 int ad7768_interrupt ;
 int ad7768_regulator_disable ;
 int ad7768_setup (struct ad7768_state*) ;
 int ad7768_trigger_handler ;
 int ad7768_trigger_ops ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int devm_add_action_or_reset (int *,int ,struct ad7768_state*) ;
 int devm_clk_get (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 TYPE_4__* devm_iio_trigger_alloc (int *,char*,int ,int ) ;
 int devm_iio_trigger_register (int *,TYPE_4__*) ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int *,int *,int *) ;
 int devm_regulator_get (int *,char*) ;
 int devm_request_irq (int *,int ,int *,int,int ,struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct ad7768_state* iio_priv (struct iio_dev*) ;
 int iio_trigger_get (TYPE_4__*) ;
 int iio_trigger_set_drvdata (TYPE_4__*,struct iio_dev*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int regulator_enable (int ) ;
 TYPE_3__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad7768_probe(struct spi_device *spi)
{
 struct ad7768_state *st;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 st = iio_priv(indio_dev);
 st->spi = spi;

 st->vref = devm_regulator_get(&spi->dev, "vref");
 if (IS_ERR(st->vref))
  return PTR_ERR(st->vref);

 ret = regulator_enable(st->vref);
 if (ret) {
  dev_err(&spi->dev, "Failed to enable specified vref supply\n");
  return ret;
 }

 ret = devm_add_action_or_reset(&spi->dev, ad7768_regulator_disable, st);
 if (ret)
  return ret;

 st->mclk = devm_clk_get(&spi->dev, "mclk");
 if (IS_ERR(st->mclk))
  return PTR_ERR(st->mclk);

 ret = clk_prepare_enable(st->mclk);
 if (ret < 0)
  return ret;

 ret = devm_add_action_or_reset(&spi->dev, ad7768_clk_disable, st);
 if (ret)
  return ret;

 st->mclk_freq = clk_get_rate(st->mclk);

 spi_set_drvdata(spi, indio_dev);
 mutex_init(&st->lock);

 indio_dev->channels = ad7768_channels;
 indio_dev->num_channels = ARRAY_SIZE(ad7768_channels);
 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->info = &ad7768_info;
 indio_dev->modes = INDIO_DIRECT_MODE | INDIO_BUFFER_TRIGGERED;

 ret = ad7768_setup(st);
 if (ret < 0) {
  dev_err(&spi->dev, "AD7768 setup failed\n");
  return ret;
 }

 st->trig = devm_iio_trigger_alloc(&spi->dev, "%s-dev%d",
       indio_dev->name, indio_dev->id);
 if (!st->trig)
  return -ENOMEM;

 st->trig->ops = &ad7768_trigger_ops;
 st->trig->dev.parent = &spi->dev;
 iio_trigger_set_drvdata(st->trig, indio_dev);
 ret = devm_iio_trigger_register(&spi->dev, st->trig);
 if (ret)
  return ret;

 indio_dev->trig = iio_trigger_get(st->trig);

 init_completion(&st->completion);

 ret = devm_request_irq(&spi->dev, spi->irq,
          &ad7768_interrupt,
          IRQF_TRIGGER_RISING | IRQF_ONESHOT,
          indio_dev->name, indio_dev);
 if (ret)
  return ret;

 ret = devm_iio_triggered_buffer_setup(&spi->dev, indio_dev,
           &iio_pollfunc_store_time,
           &ad7768_trigger_handler,
           &ad7768_buffer_ops);
 if (ret)
  return ret;

 return devm_iio_device_register(&spi->dev, indio_dev);
}
