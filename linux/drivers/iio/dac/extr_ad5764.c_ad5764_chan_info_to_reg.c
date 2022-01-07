
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int address; } ;


 int AD5764_REG_DATA (int ) ;
 int AD5764_REG_FINE_GAIN (int ) ;
 int AD5764_REG_OFFSET (int ) ;




__attribute__((used)) static int ad5764_chan_info_to_reg(struct iio_chan_spec const *chan, long info)
{
 switch (info) {
 case 128:
  return AD5764_REG_DATA(chan->address);
 case 130:
  return AD5764_REG_OFFSET(chan->address);
 case 129:
  return AD5764_REG_FINE_GAIN(chan->address);
 default:
  break;
 }

 return 0;
}
