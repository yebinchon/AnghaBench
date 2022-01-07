
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int count; } ;
struct r5conf {int max_nr_stripes; int active_stripes; int slab_cache; scalar_t__ hash_locks; } ;


 int BUG_ON (int ) ;
 int STRIPE_HASH_LOCKS_MASK ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int free_stripe (int ,struct stripe_head*) ;
 struct stripe_head* get_free_stripe (struct r5conf*,int) ;
 int shrink_buffers (struct stripe_head*) ;
 int spin_lock_irq (scalar_t__) ;
 int spin_unlock_irq (scalar_t__) ;

__attribute__((used)) static int drop_one_stripe(struct r5conf *conf)
{
 struct stripe_head *sh;
 int hash = (conf->max_nr_stripes - 1) & STRIPE_HASH_LOCKS_MASK;

 spin_lock_irq(conf->hash_locks + hash);
 sh = get_free_stripe(conf, hash);
 spin_unlock_irq(conf->hash_locks + hash);
 if (!sh)
  return 0;
 BUG_ON(atomic_read(&sh->count));
 shrink_buffers(sh);
 free_stripe(conf->slab_cache, sh);
 atomic_dec(&conf->active_stripes);
 conf->max_nr_stripes--;
 return 1;
}
