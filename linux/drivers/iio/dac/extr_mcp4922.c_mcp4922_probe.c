
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device_id {size_t driver_data; int name; } ;
struct spi_device {int dev; } ;
struct mcp4922_state {int vref_mv; int vref_reg; struct spi_device* spi; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int MCP4922_NUM_CHANNELS ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_regulator_get (int *,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct mcp4922_state* iio_priv (struct iio_dev*) ;
 int * mcp4922_channels ;
 int mcp4922_info ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_get_voltage (int ) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int mcp4922_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 struct mcp4922_state *state;
 const struct spi_device_id *id;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*state));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 state = iio_priv(indio_dev);
 state->spi = spi;
 state->vref_reg = devm_regulator_get(&spi->dev, "vref");
 if (IS_ERR(state->vref_reg)) {
  dev_err(&spi->dev, "Vref regulator not specified\n");
  return PTR_ERR(state->vref_reg);
 }

 ret = regulator_enable(state->vref_reg);
 if (ret) {
  dev_err(&spi->dev, "Failed to enable vref regulator: %d\n",
    ret);
  return ret;
 }

 ret = regulator_get_voltage(state->vref_reg);
 if (ret < 0) {
  dev_err(&spi->dev, "Failed to read vref regulator: %d\n",
    ret);
  goto error_disable_reg;
 }
 state->vref_mv = ret / 1000;

 spi_set_drvdata(spi, indio_dev);
 id = spi_get_device_id(spi);
 indio_dev->dev.parent = &spi->dev;
 indio_dev->info = &mcp4922_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = mcp4922_channels[id->driver_data];
 indio_dev->num_channels = MCP4922_NUM_CHANNELS;
 indio_dev->name = id->name;

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(&spi->dev, "Failed to register iio device: %d\n",
    ret);
  goto error_disable_reg;
 }

 return 0;

error_disable_reg:
 regulator_disable(state->vref_reg);

 return ret;
}
