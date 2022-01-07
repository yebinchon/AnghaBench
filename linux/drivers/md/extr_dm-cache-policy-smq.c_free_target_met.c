
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nr_allocated; } ;
struct smq_policy {int bg_work; TYPE_1__ cache_alloc; int cache_size; } ;


 int FREE_TARGET ;
 scalar_t__ btracker_nr_demotions_queued (int ) ;
 unsigned int from_cblock (int ) ;
 scalar_t__ percent_to_target (struct smq_policy*,int ) ;

__attribute__((used)) static bool free_target_met(struct smq_policy *mq)
{
 unsigned nr_free;

 nr_free = from_cblock(mq->cache_size) - mq->cache_alloc.nr_allocated;
 return (nr_free + btracker_nr_demotions_queued(mq->bg_work)) >=
  percent_to_target(mq, FREE_TARGET);
}
