
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore {int valid; int metadata_wq; int * callbacks; int pending_count; scalar_t__ callback_count; scalar_t__ current_committed; scalar_t__ next_free; int * header_area; int * zero_area; int * area; int version; struct dm_exception_store* store; } ;
struct dm_exception_store {int userspace_supports_overflow; struct pstore* context; } ;


 int DMERR (char*,...) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NUM_SNAPSHOT_HDR_CHUNKS ;
 int SNAPSHOT_DISK_VERSION ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int atomic_set (int *,int ) ;
 int destroy_workqueue (int ) ;
 int kfree (struct pstore*) ;
 struct pstore* kzalloc (int,int ) ;
 char toupper (char) ;

__attribute__((used)) static int persistent_ctr(struct dm_exception_store *store, char *options)
{
 struct pstore *ps;
 int r;


 ps = kzalloc(sizeof(*ps), GFP_KERNEL);
 if (!ps)
  return -ENOMEM;

 ps->store = store;
 ps->valid = 1;
 ps->version = SNAPSHOT_DISK_VERSION;
 ps->area = ((void*)0);
 ps->zero_area = ((void*)0);
 ps->header_area = ((void*)0);
 ps->next_free = NUM_SNAPSHOT_HDR_CHUNKS + 1;
 ps->current_committed = 0;

 ps->callback_count = 0;
 atomic_set(&ps->pending_count, 0);
 ps->callbacks = ((void*)0);

 ps->metadata_wq = alloc_workqueue("ksnaphd", WQ_MEM_RECLAIM, 0);
 if (!ps->metadata_wq) {
  DMERR("couldn't start header metadata update thread");
  r = -ENOMEM;
  goto err_workqueue;
 }

 if (options) {
  char overflow = toupper(options[0]);
  if (overflow == 'O')
   store->userspace_supports_overflow = 1;
  else {
   DMERR("Unsupported persistent store option: %s", options);
   r = -EINVAL;
   goto err_options;
  }
 }

 store->context = ps;

 return 0;

err_options:
 destroy_workqueue(ps->metadata_wq);
err_workqueue:
 kfree(ps);

 return r;
}
