
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vz89x_data {int * buffer; } ;
struct TYPE_2__ {int endianness; } ;
struct iio_chan_spec {size_t address; TYPE_1__ scan_type; } ;
typedef int __le32 ;
typedef int __be32 ;


 int EINVAL ;
 int GENMASK (int,int ) ;


 int be32_to_cpup (int *) ;
 int le32_to_cpup (int *) ;

__attribute__((used)) static int vz89x_get_resistance_reading(struct vz89x_data *data,
     struct iio_chan_spec const *chan,
     int *val)
{
 u8 *tmp = (u8 *) &data->buffer[chan->address];

 switch (chan->scan_type.endianness) {
 case 128:
  *val = le32_to_cpup((__le32 *) tmp) & GENMASK(23, 0);
  break;
 case 129:
  *val = be32_to_cpup((__be32 *) tmp) >> 8;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
