
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct maxim_thermocouple_data {TYPE_1__* chip; int spi; } ;
struct TYPE_4__ {int shift; scalar_t__ realbits; } ;
struct iio_chan_spec {int address; TYPE_2__ scan_type; } ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_3__ {unsigned int read_size; int status_bit; } ;


 int EINVAL ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int sign_extend32 (int,scalar_t__) ;
 int spi_read (int ,void*,unsigned int) ;

__attribute__((used)) static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
       struct iio_chan_spec const *chan, int *val)
{
 unsigned int storage_bytes = data->chip->read_size;
 unsigned int shift = chan->scan_type.shift + (chan->address * 8);
 __be16 buf16;
 __be32 buf32;
 int ret;

 switch (storage_bytes) {
 case 2:
  ret = spi_read(data->spi, (void *)&buf16, storage_bytes);
  *val = be16_to_cpu(buf16);
  break;
 case 4:
  ret = spi_read(data->spi, (void *)&buf32, storage_bytes);
  *val = be32_to_cpu(buf32);
  break;
 default:
  ret = -EINVAL;
 }

 if (ret)
  return ret;


 if (*val & data->chip->status_bit)
  return -EINVAL;

 *val = sign_extend32(*val >> shift, chan->scan_type.realbits - 1);

 return 0;
}
