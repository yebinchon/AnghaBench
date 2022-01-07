
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mirror_set {unsigned int nr_mirrors; int io_client; int rh; int nr_regions; struct dm_target* ti; int default_mirror; int suspend; scalar_t__ leg_failure; scalar_t__ log_failure; scalar_t__ in_sync; int holds; int failures; int writes; int reads; int lock; } ;
struct dm_target {char* error; int begin; int len; } ;
struct dm_dirty_log {int dummy; } ;


 int DEFAULT_MIRROR ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_RECOVERY ;
 int atomic_set (int *,int ) ;
 int bio_list_init (int *) ;
 int dispatch_bios ;
 int dm_io_client_create () ;
 int dm_io_client_destroy (int ) ;
 int dm_region_hash_create (struct mirror_set*,int ,int ,int ,int ,int ,struct dm_dirty_log*,int ,int ) ;
 int dm_sector_div_up (int ,int ) ;
 int kfree (struct mirror_set*) ;
 struct mirror_set* kzalloc (int ,int ) ;
 int mirror ;
 struct mirror_set* ms ;
 int spin_lock_init (int *) ;
 int struct_size (int ,int ,unsigned int) ;
 int wakeup_all_recovery_waiters ;
 int wakeup_mirrord ;

__attribute__((used)) static struct mirror_set *alloc_context(unsigned int nr_mirrors,
     uint32_t region_size,
     struct dm_target *ti,
     struct dm_dirty_log *dl)
{
 struct mirror_set *ms =
  kzalloc(struct_size(ms, mirror, nr_mirrors), GFP_KERNEL);

 if (!ms) {
  ti->error = "Cannot allocate mirror context";
  return ((void*)0);
 }

 spin_lock_init(&ms->lock);
 bio_list_init(&ms->reads);
 bio_list_init(&ms->writes);
 bio_list_init(&ms->failures);
 bio_list_init(&ms->holds);

 ms->ti = ti;
 ms->nr_mirrors = nr_mirrors;
 ms->nr_regions = dm_sector_div_up(ti->len, region_size);
 ms->in_sync = 0;
 ms->log_failure = 0;
 ms->leg_failure = 0;
 atomic_set(&ms->suspend, 0);
 atomic_set(&ms->default_mirror, DEFAULT_MIRROR);

 ms->io_client = dm_io_client_create();
 if (IS_ERR(ms->io_client)) {
  ti->error = "Error creating dm_io client";
  kfree(ms);
   return ((void*)0);
 }

 ms->rh = dm_region_hash_create(ms, dispatch_bios, wakeup_mirrord,
           wakeup_all_recovery_waiters,
           ms->ti->begin, MAX_RECOVERY,
           dl, region_size, ms->nr_regions);
 if (IS_ERR(ms->rh)) {
  ti->error = "Error creating dirty region hash";
  dm_io_client_destroy(ms->io_client);
  kfree(ms);
  return ((void*)0);
 }

 return ms;
}
