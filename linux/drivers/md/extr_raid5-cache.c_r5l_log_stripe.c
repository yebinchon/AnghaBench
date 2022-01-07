
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int disks; int pd_idx; int qd_idx; int r5c; int log_start; struct r5l_io_unit* log_io; int log_list; TYPE_1__* dev; int sector; int state; } ;
struct r5l_payload_data_parity {int dummy; } ;
struct r5l_log {scalar_t__ r5c_journal_mode; int stripe_in_journal_count; int stripe_in_journal_lock; int stripe_in_journal_list; struct r5l_io_unit* current_io; } ;
struct r5l_io_unit {int has_flush; int has_fua; int log_start; int pending_stripe; int stripe_list; } ;
typedef int __le32 ;
struct TYPE_2__ {int page; int log_checksum; int flags; } ;


 int BUG_ON (int) ;
 int MaxSector ;
 scalar_t__ R5C_JOURNAL_MODE_WRITE_BACK ;
 scalar_t__ R5C_JOURNAL_MODE_WRITE_THROUGH ;
 int R5LOG_PAYLOAD_DATA ;
 int R5LOG_PAYLOAD_PARITY ;
 int R5_InJournal ;
 int R5_WantFUA ;
 int R5_Wantwrite ;
 int STRIPE_R5C_PREFLUSH ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int r5l_append_payload_meta (struct r5l_log*,int ,int ,int ,int ,int) ;
 int r5l_append_payload_page (struct r5l_log*,int ) ;
 int r5l_get_meta (struct r5l_log*,int) ;
 int raid5_compute_blocknr (struct stripe_head*,int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int r5l_log_stripe(struct r5l_log *log, struct stripe_head *sh,
      int data_pages, int parity_pages)
{
 int i;
 int meta_size;
 int ret;
 struct r5l_io_unit *io;

 meta_size =
  ((sizeof(struct r5l_payload_data_parity) + sizeof(__le32))
   * data_pages) +
  sizeof(struct r5l_payload_data_parity) +
  sizeof(__le32) * parity_pages;

 ret = r5l_get_meta(log, meta_size);
 if (ret)
  return ret;

 io = log->current_io;

 if (test_and_clear_bit(STRIPE_R5C_PREFLUSH, &sh->state))
  io->has_flush = 1;

 for (i = 0; i < sh->disks; i++) {
  if (!test_bit(R5_Wantwrite, &sh->dev[i].flags) ||
      test_bit(R5_InJournal, &sh->dev[i].flags))
   continue;
  if (i == sh->pd_idx || i == sh->qd_idx)
   continue;
  if (test_bit(R5_WantFUA, &sh->dev[i].flags) &&
      log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_BACK) {
   io->has_fua = 1;




   io->has_flush = 1;
  }
  r5l_append_payload_meta(log, R5LOG_PAYLOAD_DATA,
     raid5_compute_blocknr(sh, i, 0),
     sh->dev[i].log_checksum, 0, 0);
  r5l_append_payload_page(log, sh->dev[i].page);
 }

 if (parity_pages == 2) {
  r5l_append_payload_meta(log, R5LOG_PAYLOAD_PARITY,
     sh->sector, sh->dev[sh->pd_idx].log_checksum,
     sh->dev[sh->qd_idx].log_checksum, 1);
  r5l_append_payload_page(log, sh->dev[sh->pd_idx].page);
  r5l_append_payload_page(log, sh->dev[sh->qd_idx].page);
 } else if (parity_pages == 1) {
  r5l_append_payload_meta(log, R5LOG_PAYLOAD_PARITY,
     sh->sector, sh->dev[sh->pd_idx].log_checksum,
     0, 0);
  r5l_append_payload_page(log, sh->dev[sh->pd_idx].page);
 } else
  BUG_ON(parity_pages != 0);

 list_add_tail(&sh->log_list, &io->stripe_list);
 atomic_inc(&io->pending_stripe);
 sh->log_io = io;

 if (log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_THROUGH)
  return 0;

 if (sh->log_start == MaxSector) {
  BUG_ON(!list_empty(&sh->r5c));
  sh->log_start = io->log_start;
  spin_lock_irq(&log->stripe_in_journal_lock);
  list_add_tail(&sh->r5c,
         &log->stripe_in_journal_list);
  spin_unlock_irq(&log->stripe_in_journal_lock);
  atomic_inc(&log->stripe_in_journal_count);
 }
 return 0;
}
