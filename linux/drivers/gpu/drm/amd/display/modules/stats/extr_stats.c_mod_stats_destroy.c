
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_stats {int dummy; } ;
struct core_stats {struct core_stats* events; struct core_stats* time; } ;


 struct core_stats* MOD_STATS_TO_CORE (struct mod_stats*) ;
 int kfree (struct core_stats*) ;

void mod_stats_destroy(struct mod_stats *mod_stats)
{
 if (mod_stats != ((void*)0)) {
  struct core_stats *core_stats = MOD_STATS_TO_CORE(mod_stats);

  kfree(core_stats->time);
  kfree(core_stats->events);
  kfree(core_stats);
 }
}
