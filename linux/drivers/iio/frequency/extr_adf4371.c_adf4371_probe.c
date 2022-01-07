
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device_id {size_t driver_data; int name; } ;
struct spi_device {int dev; } ;
struct regmap {int dummy; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; int name; TYPE_1__ dev; } ;
struct adf4371_state {struct regmap* clkin; int clkin_freq; TYPE_2__* chip_info; int lock; struct regmap* regmap; struct spi_device* spi; } ;
struct TYPE_4__ {int num_channels; int channels; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 TYPE_2__* adf4371_chip_info ;
 int adf4371_clk_disable ;
 int adf4371_info ;
 int adf4371_regmap_config ;
 int adf4371_setup (struct adf4371_state*) ;
 int clk_get_rate (struct regmap*) ;
 int clk_prepare_enable (struct regmap*) ;
 int dev_err (int *,char*,...) ;
 int devm_add_action_or_reset (int *,int ,struct adf4371_state*) ;
 struct regmap* devm_clk_get (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 struct adf4371_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int adf4371_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct iio_dev *indio_dev;
 struct adf4371_state *st;
 struct regmap *regmap;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 regmap = devm_regmap_init_spi(spi, &adf4371_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&spi->dev, "Error initializing spi regmap: %ld\n",
   PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 st = iio_priv(indio_dev);
 spi_set_drvdata(spi, indio_dev);
 st->spi = spi;
 st->regmap = regmap;
 mutex_init(&st->lock);

 st->chip_info = &adf4371_chip_info[id->driver_data];
 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = id->name;
 indio_dev->info = &adf4371_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = st->chip_info->channels;
 indio_dev->num_channels = st->chip_info->num_channels;

 st->clkin = devm_clk_get(&spi->dev, "clkin");
 if (IS_ERR(st->clkin))
  return PTR_ERR(st->clkin);

 ret = clk_prepare_enable(st->clkin);
 if (ret < 0)
  return ret;

 ret = devm_add_action_or_reset(&spi->dev, adf4371_clk_disable, st);
 if (ret)
  return ret;

 st->clkin_freq = clk_get_rate(st->clkin);

 ret = adf4371_setup(st);
 if (ret < 0) {
  dev_err(&spi->dev, "ADF4371 setup failed\n");
  return ret;
 }

 return devm_iio_device_register(&spi->dev, indio_dev);
}
