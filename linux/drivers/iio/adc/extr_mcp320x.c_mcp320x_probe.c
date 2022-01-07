
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int of_node; } ;
struct spi_device {int mode; TYPE_4__ dev; } ;
struct mcp320x_chip_info {int num_channels; int resolution; int channels; } ;
struct TYPE_8__ {int len; int delay_usecs; int rx_buf; int * tx_buf; } ;
struct mcp320x {int reg; int lock; TYPE_2__ start_conv_transfer; int start_conv_msg; TYPE_2__* transfer; int msg; int rx_buf; int tx_buf; struct mcp320x_chip_info const* chip_info; struct spi_device* spi; } ;
struct TYPE_7__ {int of_node; TYPE_4__* parent; } ;
struct iio_dev {int num_channels; int channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct TYPE_9__ {int driver_data; int name; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int DIV_ROUND_UP (int ,int) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_CPOL ;
 struct iio_dev* devm_iio_device_alloc (TYPE_4__*,int) ;
 int devm_regulator_get (TYPE_4__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct mcp320x* iio_priv (struct iio_dev*) ;
 int mcp320x_adc_conversion (struct mcp320x*,int ,int,int,int*) ;
 struct mcp320x_chip_info* mcp320x_chip_infos ;
 int mcp320x_info ;




 int mutex_init (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_3__* spi_get_device_id (struct spi_device*) ;
 int spi_message_init_with_transfers (int *,TYPE_2__*,int) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int mcp320x_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 struct mcp320x *adc;
 const struct mcp320x_chip_info *chip_info;
 int ret, device_index;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*adc));
 if (!indio_dev)
  return -ENOMEM;

 adc = iio_priv(indio_dev);
 adc->spi = spi;

 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &mcp320x_info;
 spi_set_drvdata(spi, indio_dev);

 device_index = spi_get_device_id(spi)->driver_data;
 chip_info = &mcp320x_chip_infos[device_index];
 indio_dev->channels = chip_info->channels;
 indio_dev->num_channels = chip_info->num_channels;

 adc->chip_info = chip_info;

 adc->transfer[0].tx_buf = &adc->tx_buf;
 adc->transfer[0].len = sizeof(adc->tx_buf);
 adc->transfer[1].rx_buf = adc->rx_buf;
 adc->transfer[1].len = DIV_ROUND_UP(chip_info->resolution, 8);

 if (chip_info->num_channels == 1)

  spi_message_init_with_transfers(&adc->msg,
      &adc->transfer[1], 1);
 else
  spi_message_init_with_transfers(&adc->msg, adc->transfer,
      ARRAY_SIZE(adc->transfer));

 switch (device_index) {
 case 131:
 case 130:
 case 129:
 case 128:

  if (!(spi->mode & SPI_CPOL))
   adc->transfer[1].len++;


  adc->start_conv_transfer.delay_usecs = 8;
  spi_message_init_with_transfers(&adc->start_conv_msg,
      &adc->start_conv_transfer, 1);
  mcp320x_adc_conversion(adc, 0, 1, device_index, &ret);
  mcp320x_adc_conversion(adc, 0, 1, device_index, &ret);
 }

 adc->reg = devm_regulator_get(&spi->dev, "vref");
 if (IS_ERR(adc->reg))
  return PTR_ERR(adc->reg);

 ret = regulator_enable(adc->reg);
 if (ret < 0)
  return ret;

 mutex_init(&adc->lock);

 ret = iio_device_register(indio_dev);
 if (ret < 0)
  goto reg_disable;

 return 0;

reg_disable:
 regulator_disable(adc->reg);

 return ret;
}
