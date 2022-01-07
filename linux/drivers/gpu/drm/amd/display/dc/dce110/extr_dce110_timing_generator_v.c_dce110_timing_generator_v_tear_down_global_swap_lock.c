
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;


 int DC_LOG_ERROR (char*) ;

__attribute__((used)) static void dce110_timing_generator_v_tear_down_global_swap_lock(
 struct timing_generator *tg)
{
 DC_LOG_ERROR("Timing Sync not supported on underlay pipe\n");
 return;
}
