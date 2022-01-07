
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_ts_data {int temp_data; int temp_step; int temp_offset; } ;


 int EAGAIN ;

__attribute__((used)) static int sun4i_get_temp(const struct sun4i_ts_data *ts, int *temp)
{

 if (ts->temp_data == -1)
  return -EAGAIN;

 *temp = ts->temp_data * ts->temp_step - ts->temp_offset;

 return 0;
}
