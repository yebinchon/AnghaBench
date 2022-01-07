
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct mcp3911 {int * vref; int * clki; int lock; struct spi_device* spi; } ;
struct TYPE_7__ {int of_node; TYPE_3__* parent; } ;
struct iio_dev {int num_channels; int channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct TYPE_8__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int clk_disable_unprepare (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (TYPE_3__*,char*,int) ;
 int * devm_clk_get (TYPE_3__*,int *) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 int * devm_regulator_get_optional (TYPE_3__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct mcp3911* iio_priv (struct iio_dev*) ;
 int mcp3911_channels ;
 int mcp3911_config (struct mcp3911*,int ) ;
 int mcp3911_info ;
 int mutex_init (int *) ;
 int regulator_disable (int *) ;
 int regulator_enable (int *) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int mcp3911_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 struct mcp3911 *adc;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*adc));
 if (!indio_dev)
  return -ENOMEM;

 adc = iio_priv(indio_dev);
 adc->spi = spi;

 adc->vref = devm_regulator_get_optional(&adc->spi->dev, "vref");
 if (IS_ERR(adc->vref)) {
  if (PTR_ERR(adc->vref) == -ENODEV) {
   adc->vref = ((void*)0);
  } else {
   dev_err(&adc->spi->dev,
    "failed to get regulator (%ld)\n",
    PTR_ERR(adc->vref));
   return PTR_ERR(adc->vref);
  }

 } else {
  ret = regulator_enable(adc->vref);
  if (ret)
   return ret;
 }

 adc->clki = devm_clk_get(&adc->spi->dev, ((void*)0));
 if (IS_ERR(adc->clki)) {
  if (PTR_ERR(adc->clki) == -ENOENT) {
   adc->clki = ((void*)0);
  } else {
   dev_err(&adc->spi->dev,
    "failed to get adc clk (%ld)\n",
    PTR_ERR(adc->clki));
   ret = PTR_ERR(adc->clki);
   goto reg_disable;
  }
 } else {
  ret = clk_prepare_enable(adc->clki);
  if (ret < 0) {
   dev_err(&adc->spi->dev,
    "Failed to enable clki: %d\n", ret);
   goto reg_disable;
  }
 }

 ret = mcp3911_config(adc, spi->dev.of_node);
 if (ret)
  goto clk_disable;

 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &mcp3911_info;
 spi_set_drvdata(spi, indio_dev);

 indio_dev->channels = mcp3911_channels;
 indio_dev->num_channels = ARRAY_SIZE(mcp3911_channels);

 mutex_init(&adc->lock);

 ret = iio_device_register(indio_dev);
 if (ret)
  goto clk_disable;

 return ret;

clk_disable:
 clk_disable_unprepare(adc->clki);
reg_disable:
 if (adc->vref)
  regulator_disable(adc->vref);

 return ret;
}
