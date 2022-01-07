
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {unsigned int hotspot_level_jump; int hotspot_table; int hotspot; int hotspot_hit_bits; int hotspot_alloc; int hotspot_stats; } ;
struct entry {int oblock; int level; } ;
typedef int dm_oblock_t ;


 struct entry* alloc_entry (int *) ;
 int clear_bit (unsigned int,int ) ;
 unsigned int get_index (int *,struct entry*) ;
 int h_insert (int *,struct entry*) ;
 struct entry* h_lookup (int *,int ) ;
 int h_remove (int *,struct entry*) ;
 struct entry* q_pop (int *) ;
 int q_push (int *,struct entry*) ;
 int q_requeue (int *,struct entry*,unsigned int,int *,int *) ;
 int stats_level_accessed (int *,int ) ;
 int stats_miss (int *) ;
 scalar_t__ test_and_set_bit (unsigned int,int ) ;
 int to_hblock (struct smq_policy*,int ) ;

__attribute__((used)) static struct entry *update_hotspot_queue(struct smq_policy *mq, dm_oblock_t b)
{
 unsigned hi;
 dm_oblock_t hb = to_hblock(mq, b);
 struct entry *e = h_lookup(&mq->hotspot_table, hb);

 if (e) {
  stats_level_accessed(&mq->hotspot_stats, e->level);

  hi = get_index(&mq->hotspot_alloc, e);
  q_requeue(&mq->hotspot, e,
     test_and_set_bit(hi, mq->hotspot_hit_bits) ?
     0u : mq->hotspot_level_jump,
     ((void*)0), ((void*)0));

 } else {
  stats_miss(&mq->hotspot_stats);

  e = alloc_entry(&mq->hotspot_alloc);
  if (!e) {
   e = q_pop(&mq->hotspot);
   if (e) {
    h_remove(&mq->hotspot_table, e);
    hi = get_index(&mq->hotspot_alloc, e);
    clear_bit(hi, mq->hotspot_hit_bits);
   }

  }

  if (e) {
   e->oblock = hb;
   q_push(&mq->hotspot, e);
   h_insert(&mq->hotspot_table, e);
  }
 }

 return e;
}
