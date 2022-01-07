
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2485_data {int time_prev; } ;


 int ktime_get () ;
 unsigned int ktime_ms_delta (int ,int ) ;
 int msleep (unsigned int const) ;

__attribute__((used)) static void ltc2485_wait_conv(struct ltc2485_data *data)
{
 const unsigned int conv_time = 147;
 unsigned int time_elapsed;


 time_elapsed = ktime_ms_delta(ktime_get(), data->time_prev);

 if (time_elapsed < conv_time)
  msleep(conv_time - time_elapsed);
}
