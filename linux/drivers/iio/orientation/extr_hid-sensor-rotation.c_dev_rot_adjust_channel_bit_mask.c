
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char sign; int realbits; int storagebits; int repeat; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;



__attribute__((used)) static void dev_rot_adjust_channel_bit_mask(struct iio_chan_spec *chan,
      int size)
{
 chan->scan_type.sign = 's';

 chan->scan_type.realbits = size * 8;

 chan->scan_type.storagebits = sizeof(u32) * 8;
 chan->scan_type.repeat = 4;
}
