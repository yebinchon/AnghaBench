
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct spi_device {int dev; } ;
struct TYPE_8__ {int * parent; } ;
struct iio_dev {int available_scan_masks; int modes; int * info; int num_channels; int channels; int name; TYPE_1__ dev; } ;
struct TYPE_10__ {TYPE_7__* burst; } ;
struct adis16400_state {TYPE_3__ adis; TYPE_6__* variant; int avail_scan_mask; } ;
struct TYPE_12__ {int extra_len; } ;
struct TYPE_11__ {int flags; int num_channels; int channels; } ;
struct TYPE_9__ {size_t driver_data; int name; } ;


 int ADIS16400_BURST_DIAG_STAT ;
 int ADIS16400_NO_BURST ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 TYPE_7__ adis16400_burst ;
 TYPE_6__* adis16400_chips ;
 int adis16400_data ;
 int adis16400_debugfs_init (struct iio_dev*) ;
 int adis16400_info ;
 int adis16400_initial_setup (struct iio_dev*) ;
 int adis16400_setup_chan_mask (struct adis16400_state*) ;
 int adis16400_trigger_handler ;
 int adis_cleanup_buffer_and_trigger (TYPE_3__*,struct iio_dev*) ;
 int adis_init (TYPE_3__*,struct iio_dev*,struct spi_device*,int *) ;
 int adis_setup_buffer_and_trigger (TYPE_3__*,struct iio_dev*,int ) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct adis16400_state* iio_priv (struct iio_dev*) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int adis16400_probe(struct spi_device *spi)
{
 struct adis16400_state *st;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 st = iio_priv(indio_dev);

 spi_set_drvdata(spi, indio_dev);


 st->variant = &adis16400_chips[spi_get_device_id(spi)->driver_data];
 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->channels = st->variant->channels;
 indio_dev->num_channels = st->variant->num_channels;
 indio_dev->info = &adis16400_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 if (!(st->variant->flags & ADIS16400_NO_BURST)) {
  adis16400_setup_chan_mask(st);
  indio_dev->available_scan_masks = st->avail_scan_mask;
  st->adis.burst = &adis16400_burst;
  if (st->variant->flags & ADIS16400_BURST_DIAG_STAT)
   st->adis.burst->extra_len = sizeof(u16);
 }

 ret = adis_init(&st->adis, indio_dev, spi, &adis16400_data);
 if (ret)
  return ret;

 ret = adis_setup_buffer_and_trigger(&st->adis, indio_dev,
   adis16400_trigger_handler);
 if (ret)
  return ret;


 ret = adis16400_initial_setup(indio_dev);
 if (ret)
  goto error_cleanup_buffer;
 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_cleanup_buffer;

 adis16400_debugfs_init(indio_dev);
 return 0;

error_cleanup_buffer:
 adis_cleanup_buffer_and_trigger(&st->adis, indio_dev);
 return ret;
}
