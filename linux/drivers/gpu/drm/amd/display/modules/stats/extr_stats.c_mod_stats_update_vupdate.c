
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_time_cache {unsigned int num_vsync_between_flips; unsigned int vupdate_timestamp_in_ns; unsigned long flip_to_vsync_time_in_us; unsigned long flip_timestamp_in_ns; unsigned long* v_sync_time_in_us; } ;
struct mod_stats {int dummy; } ;
struct core_stats {unsigned int index; unsigned int entries; struct stats_time_cache* time; } ;


 unsigned int MOD_STATS_NUM_VSYNCS ;
 struct core_stats* MOD_STATS_TO_CORE (struct mod_stats*) ;

void mod_stats_update_vupdate(struct mod_stats *mod_stats,
  unsigned long timestamp_in_ns)
{
 struct core_stats *core_stats = ((void*)0);
 struct stats_time_cache *time = ((void*)0);
 unsigned int index = 0;
 unsigned int num_vsyncs = 0;
 unsigned int prev_vsync_in_ns = 0;

 if (mod_stats == ((void*)0))
  return;

 core_stats = MOD_STATS_TO_CORE(mod_stats);

 if (core_stats->index >= core_stats->entries)
  return;

 time = core_stats->time;
 index = core_stats->index;
 num_vsyncs = time[index].num_vsync_between_flips;

 if (num_vsyncs < MOD_STATS_NUM_VSYNCS) {
  if (num_vsyncs == 0) {
   prev_vsync_in_ns =
    time[index - 1].vupdate_timestamp_in_ns;

   time[index].flip_to_vsync_time_in_us =
    (timestamp_in_ns -
     time[index - 1].flip_timestamp_in_ns) /
     1000;
  } else {
   prev_vsync_in_ns =
    time[index].vupdate_timestamp_in_ns;
  }

  time[index].v_sync_time_in_us[num_vsyncs] =
   (timestamp_in_ns - prev_vsync_in_ns) / 1000;
 }

 time[index].vupdate_timestamp_in_ns = timestamp_in_ns;
 time[index].num_vsync_between_flips++;
}
