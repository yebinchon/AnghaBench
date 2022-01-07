
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {scalar_t__ next_cache_period; int cache_stats; int clean; int dirty; int cache_size; int cache_hit_bits; } ;


 scalar_t__ CACHE_UPDATE_PERIOD ;
 int clear_bitset (int ,int ) ;
 int from_cblock (int ) ;
 scalar_t__ jiffies ;
 int q_redistribute (int *) ;
 int stats_reset (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void end_cache_period(struct smq_policy *mq)
{
 if (time_after(jiffies, mq->next_cache_period)) {
  clear_bitset(mq->cache_hit_bits, from_cblock(mq->cache_size));

  q_redistribute(&mq->dirty);
  q_redistribute(&mq->clean);
  stats_reset(&mq->cache_stats);

  mq->next_cache_period = jiffies + CACHE_UPDATE_PERIOD;
 }
}
