
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_device_id {int name; } ;
struct TYPE_5__ {struct ad7303_platform_data* platform_data; scalar_t__ of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_4__ {TYPE_2__* parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; int name; TYPE_1__ dev; } ;
struct ad7303_state {void* vdd_reg; void* vref_reg; int config; struct spi_device* spi; } ;
struct ad7303_platform_data {scalar_t__ use_external_ref; } ;


 int AD7303_CFG_EXTERNAL_VREF ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int ad7303_channels ;
 int ad7303_info ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 void* devm_regulator_get (TYPE_2__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad7303_state* iio_priv (struct iio_dev*) ;
 int of_property_read_bool (scalar_t__,char*) ;
 int regulator_disable (void*) ;
 int regulator_enable (void*) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad7303_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct iio_dev *indio_dev;
 struct ad7303_state *st;
 bool ext_ref;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 st = iio_priv(indio_dev);
 spi_set_drvdata(spi, indio_dev);

 st->spi = spi;

 st->vdd_reg = devm_regulator_get(&spi->dev, "Vdd");
 if (IS_ERR(st->vdd_reg))
  return PTR_ERR(st->vdd_reg);

 ret = regulator_enable(st->vdd_reg);
 if (ret)
  return ret;

 if (spi->dev.of_node) {
  ext_ref = of_property_read_bool(spi->dev.of_node,
    "REF-supply");
 } else {
  struct ad7303_platform_data *pdata = spi->dev.platform_data;
  if (pdata && pdata->use_external_ref)
   ext_ref = 1;
  else
      ext_ref = 0;
 }

 if (ext_ref) {
  st->vref_reg = devm_regulator_get(&spi->dev, "REF");
  if (IS_ERR(st->vref_reg)) {
   ret = PTR_ERR(st->vref_reg);
   goto err_disable_vdd_reg;
  }

  ret = regulator_enable(st->vref_reg);
  if (ret)
   goto err_disable_vdd_reg;

  st->config |= AD7303_CFG_EXTERNAL_VREF;
 }

 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = id->name;
 indio_dev->info = &ad7303_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = ad7303_channels;
 indio_dev->num_channels = ARRAY_SIZE(ad7303_channels);

 ret = iio_device_register(indio_dev);
 if (ret)
  goto err_disable_vref_reg;

 return 0;

err_disable_vref_reg:
 if (st->vref_reg)
  regulator_disable(st->vref_reg);
err_disable_vdd_reg:
 regulator_disable(st->vdd_reg);
 return ret;
}
