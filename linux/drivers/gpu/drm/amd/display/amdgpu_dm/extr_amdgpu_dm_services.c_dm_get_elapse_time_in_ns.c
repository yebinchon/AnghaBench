
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_context {int dummy; } ;



unsigned long long dm_get_elapse_time_in_ns(struct dc_context *ctx,
  unsigned long long current_time_stamp,
  unsigned long long last_time_stamp)
{
 return current_time_stamp - last_time_stamp;
}
