
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int ppl_page; struct r5dev* dev; int log_start; struct r5conf* raid_conf; int count; int log_list; int r5c; int lru; int batch_list; int batch_lock; int stripe_lock; } ;
struct r5dev {int rvec; int rreq; int vec; int req; } ;
struct r5conf {int dummy; } ;
struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int MaxSector ;
 int alloc_page (int ) ;
 int atomic_set (int *,int) ;
 int bio_init (int *,int *,int) ;
 int free_stripe (struct kmem_cache*,struct stripe_head*) ;
 struct stripe_head* kmem_cache_zalloc (struct kmem_cache*,int ) ;
 scalar_t__ raid5_has_ppl (struct r5conf*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct stripe_head *alloc_stripe(struct kmem_cache *sc, gfp_t gfp,
 int disks, struct r5conf *conf)
{
 struct stripe_head *sh;
 int i;

 sh = kmem_cache_zalloc(sc, gfp);
 if (sh) {
  spin_lock_init(&sh->stripe_lock);
  spin_lock_init(&sh->batch_lock);
  INIT_LIST_HEAD(&sh->batch_list);
  INIT_LIST_HEAD(&sh->lru);
  INIT_LIST_HEAD(&sh->r5c);
  INIT_LIST_HEAD(&sh->log_list);
  atomic_set(&sh->count, 1);
  sh->raid_conf = conf;
  sh->log_start = MaxSector;
  for (i = 0; i < disks; i++) {
   struct r5dev *dev = &sh->dev[i];

   bio_init(&dev->req, &dev->vec, 1);
   bio_init(&dev->rreq, &dev->rvec, 1);
  }

  if (raid5_has_ppl(conf)) {
   sh->ppl_page = alloc_page(gfp);
   if (!sh->ppl_page) {
    free_stripe(sc, sh);
    sh = ((void*)0);
   }
  }
 }
 return sh;
}
