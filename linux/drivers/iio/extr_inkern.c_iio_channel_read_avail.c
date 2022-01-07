
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_channel {int channel; TYPE_2__* indio_dev; } ;
typedef enum iio_chan_info_enum { ____Placeholder_iio_chan_info_enum } iio_chan_info_enum ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int (* read_avail ) (TYPE_2__*,int ,int const**,int*,int*,int) ;} ;


 int EINVAL ;
 int iio_channel_has_available (int ,int) ;
 int stub1 (TYPE_2__*,int ,int const**,int*,int*,int) ;

__attribute__((used)) static int iio_channel_read_avail(struct iio_channel *chan,
      const int **vals, int *type, int *length,
      enum iio_chan_info_enum info)
{
 if (!iio_channel_has_available(chan->channel, info))
  return -EINVAL;

 return chan->indio_dev->info->read_avail(chan->indio_dev, chan->channel,
       vals, type, length, info);
}
