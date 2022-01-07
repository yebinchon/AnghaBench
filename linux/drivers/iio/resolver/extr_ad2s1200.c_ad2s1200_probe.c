
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dev; int mode; int max_speed_hz; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct ad2s1200_state {void* rdvel; void* sample; struct spi_device* sdev; int lock; } ;
struct TYPE_4__ {int name; } ;


 int AD2S1200_HZ ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GPIOD_OUT_LOW ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int SPI_MODE_3 ;
 int ad2s1200_channels ;
 int ad2s1200_info ;
 int dev_err (int *,char*,...) ;
 void* devm_gpiod_get (int *,char*,int ) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 struct ad2s1200_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int ad2s1200_probe(struct spi_device *spi)
{
 struct ad2s1200_state *st;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 spi_set_drvdata(spi, indio_dev);
 st = iio_priv(indio_dev);
 mutex_init(&st->lock);
 st->sdev = spi;

 st->sample = devm_gpiod_get(&spi->dev, "adi,sample", GPIOD_OUT_LOW);
 if (IS_ERR(st->sample)) {
  dev_err(&spi->dev, "Failed to claim SAMPLE gpio: err=%ld\n",
   PTR_ERR(st->sample));
  return PTR_ERR(st->sample);
 }

 st->rdvel = devm_gpiod_get(&spi->dev, "adi,rdvel", GPIOD_OUT_LOW);
 if (IS_ERR(st->rdvel)) {
  dev_err(&spi->dev, "Failed to claim RDVEL gpio: err=%ld\n",
   PTR_ERR(st->rdvel));
  return PTR_ERR(st->rdvel);
 }

 indio_dev->dev.parent = &spi->dev;
 indio_dev->info = &ad2s1200_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = ad2s1200_channels;
 indio_dev->num_channels = ARRAY_SIZE(ad2s1200_channels);
 indio_dev->name = spi_get_device_id(spi)->name;

 spi->max_speed_hz = AD2S1200_HZ;
 spi->mode = SPI_MODE_3;
 ret = spi_setup(spi);

 if (ret < 0) {
  dev_err(&spi->dev, "spi_setup failed!\n");
  return ret;
 }

 return devm_iio_device_register(&spi->dev, indio_dev);
}
