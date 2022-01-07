
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char sign; int realbits; int storagebits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;



__attribute__((used)) static void als_adjust_channel_bit_mask(struct iio_chan_spec *channels,
     int channel, int size)
{
 channels[channel].scan_type.sign = 's';

 channels[channel].scan_type.realbits = size * 8;

 channels[channel].scan_type.storagebits = sizeof(u32) * 8;
}
