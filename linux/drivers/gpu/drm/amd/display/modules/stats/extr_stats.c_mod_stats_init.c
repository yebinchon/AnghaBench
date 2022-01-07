
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_stats {int dummy; } ;
struct dc {int dummy; } ;
struct core_stats {struct dc* dc; } ;


 struct core_stats* MOD_STATS_TO_CORE (struct mod_stats*) ;

bool mod_stats_init(struct mod_stats *mod_stats)
{
 bool result = 0;
 struct core_stats *core_stats = ((void*)0);
 struct dc *dc = ((void*)0);

 if (mod_stats == ((void*)0))
  return 0;

 core_stats = MOD_STATS_TO_CORE(mod_stats);
 dc = core_stats->dc;

 return result;
}
