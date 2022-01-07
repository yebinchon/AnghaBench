
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ads1015_data {scalar_t__ event_channel; } ;


 scalar_t__ ADS1015_CHANNELS ;

__attribute__((used)) static bool ads1015_event_channel_enabled(struct ads1015_data *data)
{
 return (data->event_channel != ADS1015_CHANNELS);
}
