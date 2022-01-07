
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int es; int cache_hit_bits; int hotspot_hit_bits; int table; int hotspot_table; int bg_work; } ;
struct dm_cache_policy {int dummy; } ;


 int btracker_destroy (int ) ;
 int free_bitset (int ) ;
 int h_exit (int *) ;
 int kfree (struct smq_policy*) ;
 int space_exit (int *) ;
 struct smq_policy* to_smq_policy (struct dm_cache_policy*) ;

__attribute__((used)) static void smq_destroy(struct dm_cache_policy *p)
{
 struct smq_policy *mq = to_smq_policy(p);

 btracker_destroy(mq->bg_work);
 h_exit(&mq->hotspot_table);
 h_exit(&mq->table);
 free_bitset(mq->hotspot_hit_bits);
 free_bitset(mq->cache_hit_bits);
 space_exit(&mq->es);
 kfree(mq);
}
