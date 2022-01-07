
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {unsigned int read_promote_level; unsigned int write_promote_level; int hotspot_stats; int cache_alloc; } ;


 unsigned int NR_HOTSPOT_LEVELS ;



 scalar_t__ allocator_empty (int *) ;
 unsigned int default_promote_level (struct smq_policy*) ;
 unsigned int max (unsigned int,unsigned int) ;
 int stats_assess (int *) ;

__attribute__((used)) static void update_promote_levels(struct smq_policy *mq)
{




 unsigned threshold_level = allocator_empty(&mq->cache_alloc) ?
  default_promote_level(mq) : (NR_HOTSPOT_LEVELS / 2u);

 threshold_level = max(threshold_level, NR_HOTSPOT_LEVELS);






 switch (stats_assess(&mq->hotspot_stats)) {
 case 129:
  threshold_level /= 4u;
  break;

 case 130:
  threshold_level /= 2u;
  break;

 case 128:
  break;
 }

 mq->read_promote_level = NR_HOTSPOT_LEVELS - threshold_level;
 mq->write_promote_level = (NR_HOTSPOT_LEVELS - threshold_level);
}
