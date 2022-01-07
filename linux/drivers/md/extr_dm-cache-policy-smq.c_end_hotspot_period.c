
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {scalar_t__ next_hotspot_period; int hotspot_stats; int hotspot; int nr_hotspot_blocks; int hotspot_hit_bits; } ;


 scalar_t__ HOTSPOT_UPDATE_PERIOD ;
 int clear_bitset (int ,int ) ;
 scalar_t__ jiffies ;
 int q_redistribute (int *) ;
 int stats_reset (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int update_level_jump (struct smq_policy*) ;
 int update_promote_levels (struct smq_policy*) ;

__attribute__((used)) static void end_hotspot_period(struct smq_policy *mq)
{
 clear_bitset(mq->hotspot_hit_bits, mq->nr_hotspot_blocks);
 update_promote_levels(mq);

 if (time_after(jiffies, mq->next_hotspot_period)) {
  update_level_jump(mq);
  q_redistribute(&mq->hotspot);
  stats_reset(&mq->hotspot_stats);
  mq->next_hotspot_period = jiffies + HOTSPOT_UPDATE_PERIOD;
 }
}
