
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int of_node; } ;
struct spi_device {TYPE_4__ dev; } ;
struct TYPE_6__ {int of_node; TYPE_4__* parent; } ;
struct iio_dev {int * info; int num_channels; int channels; int modes; TYPE_1__ dev; int name; } ;
struct ad7923_state {int settings; int reg; int scan_single_msg; TYPE_2__* scan_single_xfer; int * rx_buf; int * tx_buf; struct spi_device* spi; } ;
struct ad7923_chip_info {int num_channels; int channels; } ;
struct TYPE_8__ {size_t driver_data; int name; } ;
struct TYPE_7__ {int len; int cs_change; int * rx_buf; int * tx_buf; } ;


 int AD7923_CODING ;
 int AD7923_PM_MODE_OPS ;
 int AD7923_PM_MODE_WRITE (int ) ;
 int AD7923_RANGE ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct ad7923_chip_info* ad7923_chip_info ;
 int ad7923_info ;
 int ad7923_trigger_handler ;
 struct iio_dev* devm_iio_device_alloc (TYPE_4__*,int) ;
 int devm_regulator_get (TYPE_4__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad7923_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int *,int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_3__* spi_get_device_id (struct spi_device*) ;
 int spi_message_add_tail (TYPE_2__*,int *) ;
 int spi_message_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad7923_probe(struct spi_device *spi)
{
 struct ad7923_state *st;
 struct iio_dev *indio_dev;
 const struct ad7923_chip_info *info;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 st = iio_priv(indio_dev);

 spi_set_drvdata(spi, indio_dev);

 st->spi = spi;
 st->settings = AD7923_CODING | AD7923_RANGE |
   AD7923_PM_MODE_WRITE(AD7923_PM_MODE_OPS);

 info = &ad7923_chip_info[spi_get_device_id(spi)->driver_data];

 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = info->channels;
 indio_dev->num_channels = info->num_channels;
 indio_dev->info = &ad7923_info;



 st->scan_single_xfer[0].tx_buf = &st->tx_buf[0];
 st->scan_single_xfer[0].len = 2;
 st->scan_single_xfer[0].cs_change = 1;
 st->scan_single_xfer[1].rx_buf = &st->rx_buf[0];
 st->scan_single_xfer[1].len = 2;

 spi_message_init(&st->scan_single_msg);
 spi_message_add_tail(&st->scan_single_xfer[0], &st->scan_single_msg);
 spi_message_add_tail(&st->scan_single_xfer[1], &st->scan_single_msg);

 st->reg = devm_regulator_get(&spi->dev, "refin");
 if (IS_ERR(st->reg))
  return PTR_ERR(st->reg);

 ret = regulator_enable(st->reg);
 if (ret)
  return ret;

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
      &ad7923_trigger_handler, ((void*)0));
 if (ret)
  goto error_disable_reg;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_cleanup_ring;

 return 0;

error_cleanup_ring:
 iio_triggered_buffer_cleanup(indio_dev);
error_disable_reg:
 regulator_disable(st->reg);

 return ret;
}
