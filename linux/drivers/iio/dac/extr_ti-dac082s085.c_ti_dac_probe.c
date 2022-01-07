
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ti_dac_spec {int resolution; int num_channels; } ;
struct TYPE_6__ {struct spi_device* spi; } ;
struct TYPE_7__ {int len; int * tx_buf; } ;
struct ti_dac_chip {int vref; int lock; int resolution; TYPE_2__ mesg; TYPE_3__ xfer; int buf; } ;
struct device {int dummy; } ;
struct spi_device {int modalias; struct device dev; } ;
struct TYPE_5__ {struct device* parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int name; int * info; TYPE_1__ dev; } ;
struct TYPE_8__ {size_t driver_data; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WRITE_ALL_UPDATE ;
 int dev_err (struct device*,char*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_regulator_get (struct device*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ti_dac_chip* iio_priv (struct iio_dev*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_4__* spi_get_device_id (struct spi_device*) ;
 int spi_message_init_with_transfers (TYPE_2__*,TYPE_3__*,int) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;
 int ti_dac_channels ;
 int ti_dac_cmd (struct ti_dac_chip*,int ,int ) ;
 int ti_dac_info ;
 struct ti_dac_spec* ti_dac_spec ;

__attribute__((used)) static int ti_dac_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 const struct ti_dac_spec *spec;
 struct ti_dac_chip *ti_dac;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*ti_dac));
 if (!indio_dev)
  return -ENOMEM;

 indio_dev->dev.parent = dev;
 indio_dev->info = &ti_dac_info;
 indio_dev->name = spi->modalias;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = ti_dac_channels;
 spi_set_drvdata(spi, indio_dev);

 ti_dac = iio_priv(indio_dev);
 ti_dac->xfer.tx_buf = &ti_dac->buf;
 ti_dac->xfer.len = sizeof(ti_dac->buf);
 spi_message_init_with_transfers(&ti_dac->mesg, &ti_dac->xfer, 1);
 ti_dac->mesg.spi = spi;

 spec = &ti_dac_spec[spi_get_device_id(spi)->driver_data];
 indio_dev->num_channels = spec->num_channels;
 ti_dac->resolution = spec->resolution;

 ti_dac->vref = devm_regulator_get(dev, "vref");
 if (IS_ERR(ti_dac->vref))
  return PTR_ERR(ti_dac->vref);

 ret = regulator_enable(ti_dac->vref);
 if (ret < 0)
  return ret;

 mutex_init(&ti_dac->lock);

 ret = ti_dac_cmd(ti_dac, WRITE_ALL_UPDATE, 0);
 if (ret) {
  dev_err(dev, "failed to initialize outputs to 0\n");
  goto err;
 }

 ret = iio_device_register(indio_dev);
 if (ret)
  goto err;

 return 0;

err:
 mutex_destroy(&ti_dac->lock);
 regulator_disable(ti_dac->vref);
 return ret;
}
