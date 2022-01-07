
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tlc4541_state {int reg; TYPE_2__* scan_single_xfer; int scan_single_msg; int * rx_buf; struct spi_device* spi; } ;
struct tlc4541_chip_info {int num_channels; int channels; } ;
struct spi_device {int dev; } ;
struct TYPE_4__ {int * parent; } ;
struct iio_dev {int * info; int num_channels; int channels; int modes; TYPE_1__ dev; int name; } ;
typedef int int8_t ;
struct TYPE_6__ {size_t driver_data; int name; } ;
struct TYPE_5__ {int len; int delay_usecs; int * rx_buf; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_regulator_get (int *,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct tlc4541_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int *,int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_3__* spi_get_device_id (struct spi_device*) ;
 int spi_message_init_with_transfers (int *,TYPE_2__*,int) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;
 int spi_write (struct spi_device*,int *,int) ;
 struct tlc4541_chip_info* tlc4541_chip_info ;
 int tlc4541_info ;
 int tlc4541_trigger_handler ;

__attribute__((used)) static int tlc4541_probe(struct spi_device *spi)
{
 struct tlc4541_state *st;
 struct iio_dev *indio_dev;
 const struct tlc4541_chip_info *info;
 int ret;
 int8_t device_init = 0;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 st = iio_priv(indio_dev);

 spi_set_drvdata(spi, indio_dev);

 st->spi = spi;

 info = &tlc4541_chip_info[spi_get_device_id(spi)->driver_data];

 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = info->channels;
 indio_dev->num_channels = info->num_channels;
 indio_dev->info = &tlc4541_info;


 spi_write(spi, &device_init, 1);


 st->scan_single_xfer[0].rx_buf = &st->rx_buf[0];
 st->scan_single_xfer[0].len = 3;
 st->scan_single_xfer[1].delay_usecs = 3;
 st->scan_single_xfer[2].rx_buf = &st->rx_buf[0];
 st->scan_single_xfer[2].len = 2;

 spi_message_init_with_transfers(&st->scan_single_msg,
     st->scan_single_xfer, 3);

 st->reg = devm_regulator_get(&spi->dev, "vref");
 if (IS_ERR(st->reg))
  return PTR_ERR(st->reg);

 ret = regulator_enable(st->reg);
 if (ret)
  return ret;

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
   &tlc4541_trigger_handler, ((void*)0));
 if (ret)
  goto error_disable_reg;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_cleanup_buffer;

 return 0;

error_cleanup_buffer:
 iio_triggered_buffer_cleanup(indio_dev);
error_disable_reg:
 regulator_disable(st->reg);

 return ret;
}
