
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mcp3422 {int config; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 size_t MCP3422_PGA (int ) ;
 size_t MCP3422_SAMPLE_RATE (int ) ;
 struct mcp3422* iio_priv (struct iio_dev*) ;
 int mcp3422_read_channel (struct mcp3422*,struct iio_chan_spec const*,int*) ;
 int* mcp3422_sample_rates ;
 int** mcp3422_scales ;

__attribute__((used)) static int mcp3422_read_raw(struct iio_dev *iio,
   struct iio_chan_spec const *channel, int *val1,
   int *val2, long mask)
{
 struct mcp3422 *adc = iio_priv(iio);
 int err;

 u8 sample_rate = MCP3422_SAMPLE_RATE(adc->config);
 u8 pga = MCP3422_PGA(adc->config);

 switch (mask) {
 case 130:
  err = mcp3422_read_channel(adc, channel, val1);
  if (err < 0)
   return -EINVAL;
  return IIO_VAL_INT;

 case 128:

  *val1 = 0;
  *val2 = mcp3422_scales[sample_rate][pga];
  return IIO_VAL_INT_PLUS_NANO;

 case 129:
  *val1 = mcp3422_sample_rates[MCP3422_SAMPLE_RATE(adc->config)];
  return IIO_VAL_INT;

 default:
  break;
 }

 return -EINVAL;
}
