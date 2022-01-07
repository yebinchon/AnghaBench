
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int shift; } ;
struct iio_chan_spec {int address; TYPE_1__ scan_type; } ;
struct ad5755_state {TYPE_2__* chip_info; } ;
struct TYPE_4__ {unsigned int calib_shift; } ;


 unsigned int AD5755_READ_REG_DATA (int ) ;
 unsigned int AD5755_READ_REG_GAIN (int ) ;
 unsigned int AD5755_READ_REG_OFFSET (int ) ;
 unsigned int AD5755_WRITE_REG_DATA (int ) ;
 unsigned int AD5755_WRITE_REG_GAIN (int ) ;
 unsigned int AD5755_WRITE_REG_OFFSET (int ) ;
 int EINVAL ;




__attribute__((used)) static int ad5755_chan_reg_info(struct ad5755_state *st,
 struct iio_chan_spec const *chan, long info, bool write,
 unsigned int *reg, unsigned int *shift, unsigned int *offset)
{
 switch (info) {
 case 128:
  if (write)
   *reg = AD5755_WRITE_REG_DATA(chan->address);
  else
   *reg = AD5755_READ_REG_DATA(chan->address);
  *shift = chan->scan_type.shift;
  *offset = 0;
  break;
 case 130:
  if (write)
   *reg = AD5755_WRITE_REG_OFFSET(chan->address);
  else
   *reg = AD5755_READ_REG_OFFSET(chan->address);
  *shift = st->chip_info->calib_shift;
  *offset = 32768;
  break;
 case 129:
  if (write)
   *reg = AD5755_WRITE_REG_GAIN(chan->address);
  else
   *reg = AD5755_READ_REG_GAIN(chan->address);
  *shift = st->chip_info->calib_shift;
  *offset = 0;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
