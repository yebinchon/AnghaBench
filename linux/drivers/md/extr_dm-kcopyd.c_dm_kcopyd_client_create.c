
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_kcopyd_throttle {int dummy; } ;
struct dm_kcopyd_client {int sub_job_size; int job_pool; int kcopyd_wq; int nr_jobs; int destroyq; int io_client; scalar_t__ nr_free_pages; scalar_t__ nr_reserved_pages; int * pages; int kcopyd_work; struct dm_kcopyd_throttle* throttle; int pages_jobs; int io_jobs; int complete_jobs; int callback_jobs; int job_lock; } ;


 unsigned int DIV_ROUND_UP (int,int ) ;
 int ENOMEM ;
 struct dm_kcopyd_client* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MIN_JOBS ;
 int PAGE_SIZE ;
 int PTR_ERR (int ) ;
 int SECTOR_SHIFT ;
 int WQ_MEM_RECLAIM ;
 int _job_cache ;
 int alloc_workqueue (char*,int ,int ) ;
 int atomic_set (int *,int ) ;
 int client_free_pages (struct dm_kcopyd_client*) ;
 int client_reserve_pages (struct dm_kcopyd_client*,unsigned int) ;
 int destroy_workqueue (int ) ;
 int dm_get_kcopyd_subjob_size () ;
 int dm_io_client_create () ;
 int do_work ;
 int init_waitqueue_head (int *) ;
 int kfree (struct dm_kcopyd_client*) ;
 struct dm_kcopyd_client* kzalloc (int,int ) ;
 int mempool_exit (int *) ;
 int mempool_init_slab_pool (int *,int ,int ) ;
 int spin_lock_init (int *) ;

struct dm_kcopyd_client *dm_kcopyd_client_create(struct dm_kcopyd_throttle *throttle)
{
 int r;
 unsigned reserve_pages;
 struct dm_kcopyd_client *kc;

 kc = kzalloc(sizeof(*kc), GFP_KERNEL);
 if (!kc)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&kc->job_lock);
 INIT_LIST_HEAD(&kc->callback_jobs);
 INIT_LIST_HEAD(&kc->complete_jobs);
 INIT_LIST_HEAD(&kc->io_jobs);
 INIT_LIST_HEAD(&kc->pages_jobs);
 kc->throttle = throttle;

 r = mempool_init_slab_pool(&kc->job_pool, MIN_JOBS, _job_cache);
 if (r)
  goto bad_slab;

 INIT_WORK(&kc->kcopyd_work, do_work);
 kc->kcopyd_wq = alloc_workqueue("kcopyd", WQ_MEM_RECLAIM, 0);
 if (!kc->kcopyd_wq) {
  r = -ENOMEM;
  goto bad_workqueue;
 }

 kc->sub_job_size = dm_get_kcopyd_subjob_size();
 reserve_pages = DIV_ROUND_UP(kc->sub_job_size << SECTOR_SHIFT, PAGE_SIZE);

 kc->pages = ((void*)0);
 kc->nr_reserved_pages = kc->nr_free_pages = 0;
 r = client_reserve_pages(kc, reserve_pages);
 if (r)
  goto bad_client_pages;

 kc->io_client = dm_io_client_create();
 if (IS_ERR(kc->io_client)) {
  r = PTR_ERR(kc->io_client);
  goto bad_io_client;
 }

 init_waitqueue_head(&kc->destroyq);
 atomic_set(&kc->nr_jobs, 0);

 return kc;

bad_io_client:
 client_free_pages(kc);
bad_client_pages:
 destroy_workqueue(kc->kcopyd_wq);
bad_workqueue:
 mempool_exit(&kc->job_pool);
bad_slab:
 kfree(kc);

 return ERR_PTR(r);
}
