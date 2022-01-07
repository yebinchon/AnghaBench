
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct spi_device_id {int name; } ;
struct TYPE_5__ {int of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct max31856_data {int thermocouple_type; struct spi_device* spi; } ;
struct iio_dev {int num_channels; int channels; int modes; int name; int * info; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_1__*,int) ;
 int devm_iio_device_register (TYPE_1__*,struct iio_dev*) ;
 struct max31856_data* iio_priv (struct iio_dev*) ;
 int max31856_channels ;
 int max31856_info ;
 int max31856_init (struct max31856_data*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int max31856_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct iio_dev *indio_dev;
 struct max31856_data *data;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 data->spi = spi;

 spi_set_drvdata(spi, indio_dev);

 indio_dev->info = &max31856_info;
 indio_dev->name = id->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = max31856_channels;
 indio_dev->num_channels = ARRAY_SIZE(max31856_channels);

 ret = of_property_read_u32(spi->dev.of_node, "thermocouple-type",
       &data->thermocouple_type);

 if (ret) {
  dev_info(&spi->dev,
    "Could not read thermocouple type DT property, configuring as a K-Type\n");
  data->thermocouple_type = 132;
 }





 switch (data->thermocouple_type) {
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  break;
 default:
  dev_err(&spi->dev,
   "error: thermocouple-type %u not supported by max31856\n"
   , data->thermocouple_type);
  return -EINVAL;
 }

 ret = max31856_init(data);
 if (ret) {
  dev_err(&spi->dev, "error: Failed to configure max31856\n");
  return ret;
 }

 return devm_iio_device_register(&spi->dev, indio_dev);
}
