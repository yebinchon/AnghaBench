
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_madc_request {int active; int raw; int do_avg; int* rbuf; int type; int channels; int method; } ;
struct twl4030_madc_data {scalar_t__ use_second_irq; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;


 int BIT (size_t) ;
 long IIO_CHAN_INFO_AVERAGE_RAW ;
 long IIO_CHAN_INFO_PROCESSED ;
 int IIO_VAL_INT ;
 int TWL4030_MADC_SW1 ;
 int TWL4030_MADC_SW2 ;
 int TWL4030_MADC_WAIT ;
 struct twl4030_madc_data* iio_priv (struct iio_dev*) ;
 int twl4030_madc_conversion (struct twl4030_madc_request*) ;

__attribute__((used)) static int twl4030_madc_read(struct iio_dev *iio_dev,
        const struct iio_chan_spec *chan,
        int *val, int *val2, long mask)
{
 struct twl4030_madc_data *madc = iio_priv(iio_dev);
 struct twl4030_madc_request req;
 int ret;

 req.method = madc->use_second_irq ? TWL4030_MADC_SW2 : TWL4030_MADC_SW1;

 req.channels = BIT(chan->channel);
 req.active = 0;
 req.type = TWL4030_MADC_WAIT;
 req.raw = !(mask == IIO_CHAN_INFO_PROCESSED);
 req.do_avg = (mask == IIO_CHAN_INFO_AVERAGE_RAW);

 ret = twl4030_madc_conversion(&req);
 if (ret < 0)
  return ret;

 *val = req.rbuf[chan->channel];

 return IIO_VAL_INT;
}
