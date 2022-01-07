
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ads1015_data {int event_channel; int comp_mode; } ;


 int WARN_ON (int ) ;
 int ads1015_event_channel_enabled (struct ads1015_data*) ;

__attribute__((used)) static void ads1015_event_channel_enable(struct ads1015_data *data, int chan,
      int comp_mode)
{
 WARN_ON(ads1015_event_channel_enabled(data));

 data->event_channel = chan;
 data->comp_mode = comp_mode;
}
