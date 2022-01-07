
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int hits; unsigned int misses; } ;
struct smq_policy {TYPE_1__ cache_stats; } ;


 unsigned int safe_div (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned default_promote_level(struct smq_policy *mq)
{
 static unsigned table[] = {1, 1, 1, 2, 4, 6, 7, 8, 7, 6, 4, 4, 3, 3, 2, 2, 1};

 unsigned hits = mq->cache_stats.hits;
 unsigned misses = mq->cache_stats.misses;
 unsigned index = safe_div(hits << 4u, hits + misses);
 return table[index];
}
