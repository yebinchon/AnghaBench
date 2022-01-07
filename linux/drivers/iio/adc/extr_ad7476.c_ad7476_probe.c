
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int of_node; } ;
struct spi_device {TYPE_6__ dev; } ;
struct TYPE_9__ {int of_node; TYPE_6__* parent; } ;
struct iio_dev {int num_channels; int * info; TYPE_3__* channels; int modes; int name; TYPE_1__ dev; } ;
struct TYPE_12__ {int len; int * rx_buf; } ;
struct ad7476_state {int reg; TYPE_8__* chip_info; int msg; TYPE_4__ xfer; int data; struct spi_device* spi; } ;
struct TYPE_15__ {int (* reset ) (struct ad7476_state*) ;TYPE_3__* channel; } ;
struct TYPE_13__ {size_t driver_data; int name; } ;
struct TYPE_10__ {int storagebits; } ;
struct TYPE_11__ {TYPE_2__ scan_type; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_8__* ad7476_chip_info_tbl ;
 int ad7476_info ;
 int ad7476_trigger_handler ;
 struct iio_dev* devm_iio_device_alloc (TYPE_6__*,int) ;
 int devm_regulator_get (TYPE_6__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad7476_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int *,int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_5__* spi_get_device_id (struct spi_device*) ;
 int spi_message_add_tail (TYPE_4__*,int *) ;
 int spi_message_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;
 int stub1 (struct ad7476_state*) ;

__attribute__((used)) static int ad7476_probe(struct spi_device *spi)
{
 struct ad7476_state *st;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 st = iio_priv(indio_dev);
 st->chip_info =
  &ad7476_chip_info_tbl[spi_get_device_id(spi)->driver_data];

 st->reg = devm_regulator_get(&spi->dev, "vcc");
 if (IS_ERR(st->reg))
  return PTR_ERR(st->reg);

 ret = regulator_enable(st->reg);
 if (ret)
  return ret;

 spi_set_drvdata(spi, indio_dev);

 st->spi = spi;


 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = st->chip_info->channel;
 indio_dev->num_channels = 2;
 indio_dev->info = &ad7476_info;


 st->xfer.rx_buf = &st->data;
 st->xfer.len = st->chip_info->channel[0].scan_type.storagebits / 8;

 spi_message_init(&st->msg);
 spi_message_add_tail(&st->xfer, &st->msg);

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
   &ad7476_trigger_handler, ((void*)0));
 if (ret)
  goto error_disable_reg;

 if (st->chip_info->reset)
  st->chip_info->reset(st);

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_ring_unregister;
 return 0;

error_ring_unregister:
 iio_triggered_buffer_cleanup(indio_dev);
error_disable_reg:
 regulator_disable(st->reg);

 return ret;
}
