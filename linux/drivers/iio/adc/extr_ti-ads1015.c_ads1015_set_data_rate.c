
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ads1015_data {int* data_rate; TYPE_1__* channel_data; } ;
struct TYPE_2__ {int data_rate; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ads1015_data_rate ;

__attribute__((used)) static int ads1015_set_data_rate(struct ads1015_data *data, int chan, int rate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ads1015_data_rate); i++) {
  if (data->data_rate[i] == rate) {
   data->channel_data[chan].data_rate = i;
   return 0;
  }
 }

 return -EINVAL;
}
