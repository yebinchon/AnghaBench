
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_time_cache {int dummy; } ;
struct stats_event_cache {int dummy; } ;
struct mod_stats {int dummy; } ;
struct core_stats {int entries; int event_entries; int index; scalar_t__ entry_id; scalar_t__ event_index; int events; int time; } ;


 struct core_stats* MOD_STATS_TO_CORE (struct mod_stats*) ;
 int memset (int ,int ,int) ;

void mod_stats_reset_data(struct mod_stats *mod_stats)
{
 struct core_stats *core_stats = ((void*)0);
 struct stats_time_cache *time = ((void*)0);
 unsigned int index = 0;

 if (mod_stats == ((void*)0))
  return;

 core_stats = MOD_STATS_TO_CORE(mod_stats);

 memset(core_stats->time, 0,
  sizeof(struct stats_time_cache) * core_stats->entries);

 memset(core_stats->events, 0,
  sizeof(struct stats_event_cache) * core_stats->event_entries);

 core_stats->index = 1;
 core_stats->event_index = 0;


 core_stats->entry_id = 0;
}
