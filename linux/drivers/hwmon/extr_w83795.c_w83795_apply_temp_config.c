
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83795_data {int has_in; int temp_mode; int has_temp; } ;



__attribute__((used)) static void w83795_apply_temp_config(struct w83795_data *data, u8 config,
         int temp_chan, int in_chan)
{

 switch (config) {
 case 0x2:
  data->has_in |= 1 << in_chan;
  break;
 case 0x1:
  if (temp_chan >= 4)
   break;
  data->temp_mode |= 1 << temp_chan;

 case 0x3:
  data->has_temp |= 1 << temp_chan;
  break;
 }
}
