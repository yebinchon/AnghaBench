
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_stats {int writeback; int demotion; int promotion; } ;
typedef enum policy_operation { ____Placeholder_policy_operation } policy_operation ;





 int atomic_inc (int *) ;

__attribute__((used)) static void update_stats(struct cache_stats *stats, enum policy_operation op)
{
 switch (op) {
 case 129:
  atomic_inc(&stats->promotion);
  break;

 case 130:
  atomic_inc(&stats->demotion);
  break;

 case 128:
  atomic_inc(&stats->writeback);
  break;
 }
}
