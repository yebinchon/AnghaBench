
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct max11100_state {int vref_reg; struct spi_device* spi; } ;
struct TYPE_4__ {int of_node; TYPE_2__* parent; } ;
struct iio_dev {char* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_regulator_get (TYPE_2__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct max11100_state* iio_priv (struct iio_dev*) ;
 int max11100_channels ;
 int max11100_info ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int max11100_probe(struct spi_device *spi)
{
 int ret;
 struct iio_dev *indio_dev;
 struct max11100_state *state;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*state));
 if (!indio_dev)
  return -ENOMEM;

 spi_set_drvdata(spi, indio_dev);

 state = iio_priv(indio_dev);
 state->spi = spi;

 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->name = "max11100";
 indio_dev->info = &max11100_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = max11100_channels;
 indio_dev->num_channels = ARRAY_SIZE(max11100_channels);

 state->vref_reg = devm_regulator_get(&spi->dev, "vref");
 if (IS_ERR(state->vref_reg))
  return PTR_ERR(state->vref_reg);

 ret = regulator_enable(state->vref_reg);
 if (ret)
  return ret;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto disable_regulator;

 return 0;

disable_regulator:
 regulator_disable(state->vref_reg);

 return ret;
}
