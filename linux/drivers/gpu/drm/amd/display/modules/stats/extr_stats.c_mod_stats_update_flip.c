
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_time_cache {unsigned long flip_timestamp_in_ns; unsigned long render_time_in_us; int avg_render_time_in_us_last_ten; scalar_t__ num_vsync_between_flips; unsigned long vsync_to_flip_time_in_us; unsigned long vupdate_timestamp_in_ns; int entry_id; } ;
struct mod_stats {int dummy; } ;
struct core_stats {unsigned int index; unsigned int entries; int entry_id; struct stats_time_cache* time; } ;


 struct core_stats* MOD_STATS_TO_CORE (struct mod_stats*) ;

void mod_stats_update_flip(struct mod_stats *mod_stats,
  unsigned long timestamp_in_ns)
{
 struct core_stats *core_stats = ((void*)0);
 struct stats_time_cache *time = ((void*)0);
 unsigned int index = 0;

 if (mod_stats == ((void*)0))
  return;

 core_stats = MOD_STATS_TO_CORE(mod_stats);

 if (core_stats->index >= core_stats->entries)
  return;

 time = core_stats->time;
 index = core_stats->index;

 time[index].flip_timestamp_in_ns = timestamp_in_ns;
 time[index].render_time_in_us =
  (timestamp_in_ns - time[index - 1].flip_timestamp_in_ns) / 1000;

 if (index >= 10) {
  for (unsigned int i = 0; i < 10; i++)
   time[index].avg_render_time_in_us_last_ten +=
     time[index - i].render_time_in_us;
  time[index].avg_render_time_in_us_last_ten /= 10;
 }

 if (time[index].num_vsync_between_flips > 0)
  time[index].vsync_to_flip_time_in_us =
   (timestamp_in_ns -
    time[index].vupdate_timestamp_in_ns) / 1000;
 else
  time[index].vsync_to_flip_time_in_us =
   (timestamp_in_ns -
    time[index - 1].vupdate_timestamp_in_ns) / 1000;

 time[index].entry_id = core_stats->entry_id;
 core_stats->index++;
 core_stats->entry_id++;
}
