
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int hash_lock_index; } ;
struct r5conf {int max_nr_stripes; int active_stripes; int slab_cache; int pool_size; } ;
typedef int gfp_t ;


 int NR_STRIPE_HASH_LOCKS ;
 struct stripe_head* alloc_stripe (int ,int ,int ,struct r5conf*) ;
 int atomic_inc (int *) ;
 int free_stripe (int ,struct stripe_head*) ;
 scalar_t__ grow_buffers (struct stripe_head*,int ) ;
 int raid5_release_stripe (struct stripe_head*) ;
 int shrink_buffers (struct stripe_head*) ;

__attribute__((used)) static int grow_one_stripe(struct r5conf *conf, gfp_t gfp)
{
 struct stripe_head *sh;

 sh = alloc_stripe(conf->slab_cache, gfp, conf->pool_size, conf);
 if (!sh)
  return 0;

 if (grow_buffers(sh, gfp)) {
  shrink_buffers(sh);
  free_stripe(conf->slab_cache, sh);
  return 0;
 }
 sh->hash_lock_index =
  conf->max_nr_stripes % NR_STRIPE_HASH_LOCKS;

 atomic_inc(&conf->active_stripes);

 raid5_release_stripe(sh);
 conf->max_nr_stripes++;
 return 1;
}
