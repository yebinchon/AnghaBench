
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int disks; scalar_t__ log_start; int log_list; int count; int state; TYPE_1__* dev; struct r5conf* raid_conf; } ;
struct r5l_log {scalar_t__ last_checkpoint; int io_mutex; int io_list_lock; int no_mem_stripes; int uuid_checksum; } ;
struct r5conf {int cache_state; } ;
struct TYPE_2__ {int log_checksum; int page; int flags; } ;


 int BUG () ;
 int BUG_ON (int) ;
 scalar_t__ MaxSector ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int R5C_LOG_CRITICAL ;
 int R5_Wantwrite ;
 int STRIPE_DELAYED ;
 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 int clear_bit (int ,int *) ;
 int crc32c_le (int ,void*,int ) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int r5l_add_no_space_stripe (struct r5l_log*,struct stripe_head*) ;
 int r5l_has_free_space (struct r5l_log*,int) ;
 int r5l_log_stripe (struct r5l_log*,struct stripe_head*,int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int r5c_cache_data(struct r5l_log *log, struct stripe_head *sh)
{
 struct r5conf *conf = sh->raid_conf;
 int pages = 0;
 int reserve;
 int i;
 int ret = 0;

 BUG_ON(!log);

 for (i = 0; i < sh->disks; i++) {
  void *addr;

  if (!test_bit(R5_Wantwrite, &sh->dev[i].flags))
   continue;
  addr = kmap_atomic(sh->dev[i].page);
  sh->dev[i].log_checksum = crc32c_le(log->uuid_checksum,
          addr, PAGE_SIZE);
  kunmap_atomic(addr);
  pages++;
 }
 WARN_ON(pages == 0);





 clear_bit(STRIPE_DELAYED, &sh->state);
 atomic_inc(&sh->count);

 mutex_lock(&log->io_mutex);

 reserve = (1 + pages) << (PAGE_SHIFT - 9);

 if (test_bit(R5C_LOG_CRITICAL, &conf->cache_state) &&
     sh->log_start == MaxSector)
  r5l_add_no_space_stripe(log, sh);
 else if (!r5l_has_free_space(log, reserve)) {
  if (sh->log_start == log->last_checkpoint)
   BUG();
  else
   r5l_add_no_space_stripe(log, sh);
 } else {
  ret = r5l_log_stripe(log, sh, pages, 0);
  if (ret) {
   spin_lock_irq(&log->io_list_lock);
   list_add_tail(&sh->log_list, &log->no_mem_stripes);
   spin_unlock_irq(&log->io_list_lock);
  }
 }

 mutex_unlock(&log->io_mutex);
 return 0;
}
