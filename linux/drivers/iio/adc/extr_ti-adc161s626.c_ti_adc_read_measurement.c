
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_adc_data {int read_size; int shift; int spi; } ;
struct TYPE_2__ {scalar_t__ realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
typedef int __be32 ;
typedef int __be16 ;


 int EINVAL ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int sign_extend32 (int,scalar_t__) ;
 int spi_read (int ,void*,int) ;

__attribute__((used)) static int ti_adc_read_measurement(struct ti_adc_data *data,
       struct iio_chan_spec const *chan, int *val)
{
 int ret;

 switch (data->read_size) {
 case 2: {
  __be16 buf;

  ret = spi_read(data->spi, (void *) &buf, 2);
  if (ret)
   return ret;

  *val = be16_to_cpu(buf);
  break;
 }
 case 3: {
  __be32 buf;

  ret = spi_read(data->spi, (void *) &buf, 3);
  if (ret)
   return ret;

  *val = be32_to_cpu(buf) >> 8;
  break;
 }
 default:
  return -EINVAL;
 }

 *val = sign_extend32(*val >> data->shift, chan->scan_type.realbits - 1);

 return 0;
}
