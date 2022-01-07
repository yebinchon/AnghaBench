
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int state; int count; int lru; } ;
struct r5conf {int r5c_flushing_full_stripes; int r5c_flushing_partial_stripes; int active_stripes; int device_lock; } ;


 int BUG_ON (int) ;
 int STRIPE_HANDLE ;
 int STRIPE_ON_RELEASE_LIST ;
 int STRIPE_R5C_CACHING ;
 int STRIPE_R5C_PARTIAL_STRIPE ;
 int atomic_inc (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int r5c_make_stripe_write_out (struct stripe_head*) ;
 int raid5_release_stripe (struct stripe_head*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void r5c_flush_stripe(struct r5conf *conf, struct stripe_head *sh)
{
 BUG_ON(list_empty(&sh->lru));
 BUG_ON(!test_bit(STRIPE_R5C_CACHING, &sh->state));
 BUG_ON(test_bit(STRIPE_HANDLE, &sh->state));





 BUG_ON(test_bit(STRIPE_ON_RELEASE_LIST, &sh->state));
 lockdep_assert_held(&conf->device_lock);

 list_del_init(&sh->lru);
 atomic_inc(&sh->count);

 set_bit(STRIPE_HANDLE, &sh->state);
 atomic_inc(&conf->active_stripes);
 r5c_make_stripe_write_out(sh);

 if (test_bit(STRIPE_R5C_PARTIAL_STRIPE, &sh->state))
  atomic_inc(&conf->r5c_flushing_partial_stripes);
 else
  atomic_inc(&conf->r5c_flushing_full_stripes);
 raid5_release_stripe(sh);
}
