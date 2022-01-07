
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {size_t pd_idx; int disks; scalar_t__ qd_idx; scalar_t__ log_start; int log_list; int count; int state; TYPE_1__* dev; scalar_t__ log_io; struct r5conf* raid_conf; } ;
struct r5l_log {scalar_t__ r5c_journal_mode; scalar_t__ last_checkpoint; int io_mutex; int io_list_lock; int no_mem_stripes; int uuid_checksum; } ;
struct r5conf {int cache_state; } ;
struct TYPE_2__ {int log_checksum; int page; int flags; } ;


 int BUG () ;
 int EAGAIN ;
 scalar_t__ MaxSector ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ R5C_JOURNAL_MODE_WRITE_THROUGH ;
 int R5C_LOG_CRITICAL ;
 int R5_InJournal ;
 int R5_Wantwrite ;
 int STRIPE_DELAYED ;
 int STRIPE_LOG_TRAPPED ;
 int STRIPE_R5C_CACHING ;
 int STRIPE_SYNCING ;
 int WARN_ON (scalar_t__) ;
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
 int r5l_log_stripe (struct r5l_log*,struct stripe_head*,int,int) ;
 int r5l_wake_reclaim (struct r5l_log*,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int r5l_write_stripe(struct r5l_log *log, struct stripe_head *sh)
{
 struct r5conf *conf = sh->raid_conf;
 int write_disks = 0;
 int data_pages, parity_pages;
 int reserve;
 int i;
 int ret = 0;
 bool wake_reclaim = 0;

 if (!log)
  return -EAGAIN;

 if (sh->log_io || !test_bit(R5_Wantwrite, &sh->dev[sh->pd_idx].flags) ||
     test_bit(STRIPE_SYNCING, &sh->state)) {

  clear_bit(STRIPE_LOG_TRAPPED, &sh->state);
  return -EAGAIN;
 }

 WARN_ON(test_bit(STRIPE_R5C_CACHING, &sh->state));

 for (i = 0; i < sh->disks; i++) {
  void *addr;

  if (!test_bit(R5_Wantwrite, &sh->dev[i].flags) ||
      test_bit(R5_InJournal, &sh->dev[i].flags))
   continue;

  write_disks++;

  if (test_bit(STRIPE_LOG_TRAPPED, &sh->state))
   continue;
  addr = kmap_atomic(sh->dev[i].page);
  sh->dev[i].log_checksum = crc32c_le(log->uuid_checksum,
          addr, PAGE_SIZE);
  kunmap_atomic(addr);
 }
 parity_pages = 1 + !!(sh->qd_idx >= 0);
 data_pages = write_disks - parity_pages;

 set_bit(STRIPE_LOG_TRAPPED, &sh->state);




 clear_bit(STRIPE_DELAYED, &sh->state);
 atomic_inc(&sh->count);

 mutex_lock(&log->io_mutex);

 reserve = (1 + write_disks) << (PAGE_SHIFT - 9);

 if (log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_THROUGH) {
  if (!r5l_has_free_space(log, reserve)) {
   r5l_add_no_space_stripe(log, sh);
   wake_reclaim = 1;
  } else {
   ret = r5l_log_stripe(log, sh, data_pages, parity_pages);
   if (ret) {
    spin_lock_irq(&log->io_list_lock);
    list_add_tail(&sh->log_list,
           &log->no_mem_stripes);
    spin_unlock_irq(&log->io_list_lock);
   }
  }
 } else {




  if (test_bit(R5C_LOG_CRITICAL, &conf->cache_state) &&
      sh->log_start == MaxSector) {
   r5l_add_no_space_stripe(log, sh);
   wake_reclaim = 1;
   reserve = 0;
  } else if (!r5l_has_free_space(log, reserve)) {
   if (sh->log_start == log->last_checkpoint)
    BUG();
   else
    r5l_add_no_space_stripe(log, sh);
  } else {
   ret = r5l_log_stripe(log, sh, data_pages, parity_pages);
   if (ret) {
    spin_lock_irq(&log->io_list_lock);
    list_add_tail(&sh->log_list,
           &log->no_mem_stripes);
    spin_unlock_irq(&log->io_list_lock);
   }
  }
 }

 mutex_unlock(&log->io_mutex);
 if (wake_reclaim)
  r5l_wake_reclaim(log, reserve);
 return 0;
}
