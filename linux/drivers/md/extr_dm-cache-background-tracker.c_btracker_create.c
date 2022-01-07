
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_tracker {unsigned int max_work; int work_cache; int pending; int queued; int issued; int pending_demotes; int pending_writebacks; int pending_promotes; } ;


 int DMERR (char*) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KMEM_CACHE (int ,int ) ;
 int RB_ROOT ;
 int atomic_set (int *,int ) ;
 int bt_work ;
 int kfree (struct background_tracker*) ;
 struct background_tracker* kmalloc (int,int ) ;

struct background_tracker *btracker_create(unsigned max_work)
{
 struct background_tracker *b = kmalloc(sizeof(*b), GFP_KERNEL);

 if (!b) {
  DMERR("couldn't create background_tracker");
  return ((void*)0);
 }

 b->max_work = max_work;
 atomic_set(&b->pending_promotes, 0);
 atomic_set(&b->pending_writebacks, 0);
 atomic_set(&b->pending_demotes, 0);

 INIT_LIST_HEAD(&b->issued);
 INIT_LIST_HEAD(&b->queued);

 b->pending = RB_ROOT;
 b->work_cache = KMEM_CACHE(bt_work, 0);
 if (!b->work_cache) {
  DMERR("couldn't create mempool for background work items");
  kfree(b);
  b = ((void*)0);
 }

 return b;
}
