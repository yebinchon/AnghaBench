
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_time_cache {int dummy; } ;
struct stats_event_cache {int dummy; } ;
struct persistent_data_flag {int dummy; } ;
struct mod_stats {int dummy; } ;
struct dc {int ctx; } ;
struct core_stats {unsigned int enabled; unsigned int entries; unsigned int event_entries; int index; struct core_stats* time; struct mod_stats public; scalar_t__ entry_id; scalar_t__ event_index; int * events; struct dc* dc; } ;


 int DAL_STATS_ENABLE_REGKEY ;
 unsigned int DAL_STATS_ENABLE_REGKEY_DEFAULT ;
 int DAL_STATS_ENTRIES_REGKEY ;
 unsigned int DAL_STATS_ENTRIES_REGKEY_DEFAULT ;
 unsigned int DAL_STATS_ENTRIES_REGKEY_MAX ;
 unsigned int DAL_STATS_EVENT_ENTRIES_DEFAULT ;
 int GFP_KERNEL ;
 scalar_t__ dm_read_persistent_data (int ,int *,int *,int ,unsigned int*,int,struct persistent_data_flag*) ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (struct core_stats*) ;
 struct core_stats* kzalloc (int,int ) ;

struct mod_stats *mod_stats_create(struct dc *dc)
{
 struct core_stats *core_stats = ((void*)0);
 struct persistent_data_flag flag;
 unsigned int reg_data;
 int i = 0;

 if (dc == ((void*)0))
  goto fail_construct;

 core_stats = kzalloc(sizeof(struct core_stats), GFP_KERNEL);

 if (core_stats == ((void*)0))
  goto fail_construct;

 core_stats->dc = dc;

 core_stats->enabled = DAL_STATS_ENABLE_REGKEY_DEFAULT;
 if (dm_read_persistent_data(dc->ctx, ((void*)0), ((void*)0),
   DAL_STATS_ENABLE_REGKEY,
   &reg_data, sizeof(unsigned int), &flag))
  core_stats->enabled = reg_data;

 if (core_stats->enabled) {
  core_stats->entries = DAL_STATS_ENTRIES_REGKEY_DEFAULT;
  if (dm_read_persistent_data(dc->ctx, ((void*)0), ((void*)0),
    DAL_STATS_ENTRIES_REGKEY,
    &reg_data, sizeof(unsigned int), &flag)) {
   if (reg_data > DAL_STATS_ENTRIES_REGKEY_MAX)
    core_stats->entries = DAL_STATS_ENTRIES_REGKEY_MAX;
   else
    core_stats->entries = reg_data;
  }
  core_stats->time = kcalloc(core_stats->entries,
      sizeof(struct stats_time_cache),
      GFP_KERNEL);

  if (core_stats->time == ((void*)0))
   goto fail_construct_time;

  core_stats->event_entries = DAL_STATS_EVENT_ENTRIES_DEFAULT;
  core_stats->events = kcalloc(core_stats->event_entries,
          sizeof(struct stats_event_cache),
          GFP_KERNEL);

  if (core_stats->events == ((void*)0))
   goto fail_construct_events;

 } else {
  core_stats->entries = 0;
 }




 core_stats->index = 1;
 core_stats->event_index = 0;


 core_stats->entry_id = 0;

 return &core_stats->public;

fail_construct_events:
 kfree(core_stats->time);

fail_construct_time:
 kfree(core_stats);

fail_construct:
 return ((void*)0);
}
