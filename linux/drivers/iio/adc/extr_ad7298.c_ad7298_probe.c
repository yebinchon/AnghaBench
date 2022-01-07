
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int of_node; struct ad7298_platform_data* platform_data; } ;
struct spi_device {TYPE_4__ dev; } ;
struct TYPE_6__ {int of_node; TYPE_4__* parent; } ;
struct iio_dev {int * info; int num_channels; int channels; int modes; TYPE_1__ dev; int name; } ;
struct ad7298_state {int reg; scalar_t__ ext_ref; int scan_single_msg; TYPE_2__* scan_single_xfer; int * rx_buf; int * tx_buf; struct spi_device* spi; } ;
struct ad7298_platform_data {scalar_t__ ext_ref; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int len; int cs_change; int * rx_buf; int * tx_buf; } ;


 scalar_t__ AD7298_EXTREF ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ad7298_channels ;
 int ad7298_info ;
 int ad7298_trigger_handler ;
 struct iio_dev* devm_iio_device_alloc (TYPE_4__*,int) ;
 int devm_regulator_get (TYPE_4__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad7298_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int *,int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_3__* spi_get_device_id (struct spi_device*) ;
 int spi_message_add_tail (TYPE_2__*,int *) ;
 int spi_message_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad7298_probe(struct spi_device *spi)
{
 struct ad7298_platform_data *pdata = spi->dev.platform_data;
 struct ad7298_state *st;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 st = iio_priv(indio_dev);

 if (pdata && pdata->ext_ref)
  st->ext_ref = AD7298_EXTREF;

 if (st->ext_ref) {
  st->reg = devm_regulator_get(&spi->dev, "vref");
  if (IS_ERR(st->reg))
   return PTR_ERR(st->reg);

  ret = regulator_enable(st->reg);
  if (ret)
   return ret;
 }

 spi_set_drvdata(spi, indio_dev);

 st->spi = spi;

 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = ad7298_channels;
 indio_dev->num_channels = ARRAY_SIZE(ad7298_channels);
 indio_dev->info = &ad7298_info;



 st->scan_single_xfer[0].tx_buf = &st->tx_buf[0];
 st->scan_single_xfer[0].len = 2;
 st->scan_single_xfer[0].cs_change = 1;
 st->scan_single_xfer[1].tx_buf = &st->tx_buf[1];
 st->scan_single_xfer[1].len = 2;
 st->scan_single_xfer[1].cs_change = 1;
 st->scan_single_xfer[2].rx_buf = &st->rx_buf[0];
 st->scan_single_xfer[2].len = 2;

 spi_message_init(&st->scan_single_msg);
 spi_message_add_tail(&st->scan_single_xfer[0], &st->scan_single_msg);
 spi_message_add_tail(&st->scan_single_xfer[1], &st->scan_single_msg);
 spi_message_add_tail(&st->scan_single_xfer[2], &st->scan_single_msg);

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
   &ad7298_trigger_handler, ((void*)0));
 if (ret)
  goto error_disable_reg;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_cleanup_ring;

 return 0;

error_cleanup_ring:
 iio_triggered_buffer_cleanup(indio_dev);
error_disable_reg:
 if (st->ext_ref)
  regulator_disable(st->reg);

 return ret;
}
