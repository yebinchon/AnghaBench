
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ads1015_data {int event_channel; } ;


 int ADS1015_CHANNELS ;

__attribute__((used)) static void ads1015_event_channel_disable(struct ads1015_data *data, int chan)
{
 data->event_channel = ADS1015_CHANNELS;
}
