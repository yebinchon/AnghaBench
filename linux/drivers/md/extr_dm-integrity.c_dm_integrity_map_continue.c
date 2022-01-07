
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct journal_entry {int dummy; } ;
struct TYPE_12__ {unsigned int n_sectors; scalar_t__ logical_sector; } ;
struct TYPE_9__ {int bi_size; } ;
struct dm_integrity_io {int work; TYPE_5__ range; int orig_bi_end_io; int orig_bi_integrity; int orig_bi_partno; int orig_bi_disk; TYPE_2__ orig_bi_iter; struct completion* completion; scalar_t__ in_flight; scalar_t__ write; struct dm_integrity_c* ic; } ;
struct TYPE_10__ {int lock; } ;
struct dm_integrity_c {char mode; unsigned int free_section; unsigned int free_section_entry; unsigned int journal_section_entries; unsigned int n_uncommitted_sections; unsigned int sectors_per_block; unsigned int journal_entries; int metadata_wq; int recalc_bitmap; TYPE_4__* sb; TYPE_1__* dev; int writer_wq; int may_write_bitmap; TYPE_3__ endio_wait; int wait_wq; int * journal_tree; scalar_t__ free_sectors; scalar_t__ internal_hash; } ;
struct completion {int dummy; } ;
struct bitmap_block_status {int work; int bio_queue_lock; int bio_queue; } ;
struct bio {int bi_status; TYPE_2__ bi_iter; int bi_end_io; int bi_opf; int * bi_integrity; int bi_partno; int bi_disk; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ atomic_t ;
struct TYPE_11__ {scalar_t__ log2_sectors_per_block; int flags; int recalc_sector; } ;
struct TYPE_8__ {int bdev; } ;


 scalar_t__ ATOMIC_INIT (int) ;
 int BITMAP_OP_TEST_ALL_CLEAR ;
 int BITMAP_OP_TEST_ALL_SET ;
 int BUG_ON (int) ;
 int INIT_WORK (int *,int (*) (int *)) ;
 unsigned int NOT_FOUND ;
 int REQ_INTEGRITY ;
 int SB_FLAG_RECALCULATING ;
 int SECTOR_SHIFT ;
 int __journal_read_write (struct dm_integrity_io*,struct bio*,unsigned int,unsigned int) ;
 struct journal_entry* access_journal_entry (struct dm_integrity_c*,unsigned int,unsigned int) ;
 int add_journal_node (struct dm_integrity_c*,int *,scalar_t__) ;
 int add_new_range (struct dm_integrity_c*,TYPE_5__*,int) ;
 int bio_integrity (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 unsigned int bio_sectors (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int block_bitmap_op (struct dm_integrity_c*,int ,scalar_t__,unsigned int,int ) ;
 int cpu_to_le32 (int ) ;
 int dec_in_flight (struct dm_integrity_io*) ;
 struct bio* dm_bio_from_per_bio_data (struct dm_integrity_io*,int) ;
 int dm_integrity_failed (struct dm_integrity_c*) ;
 int do_endio (struct dm_integrity_c*,struct bio*) ;
 int do_endio_flush (struct dm_integrity_c*,struct dm_integrity_io*) ;
 unsigned int find_journal_node (struct dm_integrity_c*,scalar_t__,scalar_t__*) ;
 int generic_make_request (struct bio*) ;
 int init_completion (struct completion*) ;
 int integrity_bio_wait (int *) ;
 int integrity_end_io ;
 int integrity_metadata (int *) ;
 int journal_entry_is_unused (struct journal_entry*) ;
 int journal_entry_set_inprogress (struct journal_entry*) ;
 scalar_t__ le64_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 unsigned int min (unsigned int,scalar_t__) ;
 int queue_work (int ,int *) ;
 int remove_range_unlocked (struct dm_integrity_c*,TYPE_5__*) ;
 struct bitmap_block_status* sector_to_bitmap_block (struct dm_integrity_c*,scalar_t__) ;
 int sleep_on_endio_wait (struct dm_integrity_c*) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int test_journal_node (struct dm_integrity_c*,unsigned int,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int wait_and_add_new_range (struct dm_integrity_c*,TYPE_5__*) ;
 int wait_for_completion_io (struct completion*) ;
 int wraparound_section (struct dm_integrity_c*,unsigned int*) ;

__attribute__((used)) static void dm_integrity_map_continue(struct dm_integrity_io *dio, bool from_map)
{
 struct dm_integrity_c *ic = dio->ic;
 struct bio *bio = dm_bio_from_per_bio_data(dio, sizeof(struct dm_integrity_io));
 unsigned journal_section, journal_entry;
 unsigned journal_read_pos;
 struct completion read_comp;
 bool need_sync_io = ic->internal_hash && !dio->write;

 if (need_sync_io && from_map) {
  INIT_WORK(&dio->work, integrity_bio_wait);
  queue_work(ic->metadata_wq, &dio->work);
  return;
 }

lock_retry:
 spin_lock_irq(&ic->endio_wait.lock);
retry:
 if (unlikely(dm_integrity_failed(ic))) {
  spin_unlock_irq(&ic->endio_wait.lock);
  do_endio(ic, bio);
  return;
 }
 dio->range.n_sectors = bio_sectors(bio);
 journal_read_pos = NOT_FOUND;
 if (likely(ic->mode == 'J')) {
  if (dio->write) {
   unsigned next_entry, i, pos;
   unsigned ws, we, range_sectors;

   dio->range.n_sectors = min(dio->range.n_sectors,
         (sector_t)ic->free_sectors << ic->sb->log2_sectors_per_block);
   if (unlikely(!dio->range.n_sectors)) {
    if (from_map)
     goto offload_to_thread;
    sleep_on_endio_wait(ic);
    goto retry;
   }
   range_sectors = dio->range.n_sectors >> ic->sb->log2_sectors_per_block;
   ic->free_sectors -= range_sectors;
   journal_section = ic->free_section;
   journal_entry = ic->free_section_entry;

   next_entry = ic->free_section_entry + range_sectors;
   ic->free_section_entry = next_entry % ic->journal_section_entries;
   ic->free_section += next_entry / ic->journal_section_entries;
   ic->n_uncommitted_sections += next_entry / ic->journal_section_entries;
   wraparound_section(ic, &ic->free_section);

   pos = journal_section * ic->journal_section_entries + journal_entry;
   ws = journal_section;
   we = journal_entry;
   i = 0;
   do {
    struct journal_entry *je;

    add_journal_node(ic, &ic->journal_tree[pos], dio->range.logical_sector + i);
    pos++;
    if (unlikely(pos >= ic->journal_entries))
     pos = 0;

    je = access_journal_entry(ic, ws, we);
    BUG_ON(!journal_entry_is_unused(je));
    journal_entry_set_inprogress(je);
    we++;
    if (unlikely(we == ic->journal_section_entries)) {
     we = 0;
     ws++;
     wraparound_section(ic, &ws);
    }
   } while ((i += ic->sectors_per_block) < dio->range.n_sectors);

   spin_unlock_irq(&ic->endio_wait.lock);
   goto journal_read_write;
  } else {
   sector_t next_sector;
   journal_read_pos = find_journal_node(ic, dio->range.logical_sector, &next_sector);
   if (likely(journal_read_pos == NOT_FOUND)) {
    if (unlikely(dio->range.n_sectors > next_sector - dio->range.logical_sector))
     dio->range.n_sectors = next_sector - dio->range.logical_sector;
   } else {
    unsigned i;
    unsigned jp = journal_read_pos + 1;
    for (i = ic->sectors_per_block; i < dio->range.n_sectors; i += ic->sectors_per_block, jp++) {
     if (!test_journal_node(ic, jp, dio->range.logical_sector + i))
      break;
    }
    dio->range.n_sectors = i;
   }
  }
 }
 if (unlikely(!add_new_range(ic, &dio->range, 1))) {





  if (from_map) {
offload_to_thread:
   spin_unlock_irq(&ic->endio_wait.lock);
   INIT_WORK(&dio->work, integrity_bio_wait);
   queue_work(ic->wait_wq, &dio->work);
   return;
  }
  if (journal_read_pos != NOT_FOUND)
   dio->range.n_sectors = ic->sectors_per_block;
  wait_and_add_new_range(ic, &dio->range);





  if (journal_read_pos != NOT_FOUND) {
   sector_t next_sector;
   unsigned new_pos = find_journal_node(ic, dio->range.logical_sector, &next_sector);
   if (unlikely(new_pos != journal_read_pos)) {
    remove_range_unlocked(ic, &dio->range);
    goto retry;
   }
  }
 }
 spin_unlock_irq(&ic->endio_wait.lock);

 if (unlikely(journal_read_pos != NOT_FOUND)) {
  journal_section = journal_read_pos / ic->journal_section_entries;
  journal_entry = journal_read_pos % ic->journal_section_entries;
  goto journal_read_write;
 }

 if (ic->mode == 'B' && dio->write) {
  if (!block_bitmap_op(ic, ic->may_write_bitmap, dio->range.logical_sector,
         dio->range.n_sectors, BITMAP_OP_TEST_ALL_SET)) {
   struct bitmap_block_status *bbs;

   bbs = sector_to_bitmap_block(ic, dio->range.logical_sector);
   spin_lock(&bbs->bio_queue_lock);
   bio_list_add(&bbs->bio_queue, bio);
   spin_unlock(&bbs->bio_queue_lock);
   queue_work(ic->writer_wq, &bbs->work);
   return;
  }
 }

 dio->in_flight = (atomic_t)ATOMIC_INIT(2);

 if (need_sync_io) {
  init_completion(&read_comp);
  dio->completion = &read_comp;
 } else
  dio->completion = ((void*)0);

 dio->orig_bi_iter = bio->bi_iter;

 dio->orig_bi_disk = bio->bi_disk;
 dio->orig_bi_partno = bio->bi_partno;
 bio_set_dev(bio, ic->dev->bdev);

 dio->orig_bi_integrity = bio_integrity(bio);
 bio->bi_integrity = ((void*)0);
 bio->bi_opf &= ~REQ_INTEGRITY;

 dio->orig_bi_end_io = bio->bi_end_io;
 bio->bi_end_io = integrity_end_io;

 bio->bi_iter.bi_size = dio->range.n_sectors << SECTOR_SHIFT;
 generic_make_request(bio);

 if (need_sync_io) {
  wait_for_completion_io(&read_comp);
  if (ic->sb->flags & cpu_to_le32(SB_FLAG_RECALCULATING) &&
      dio->range.logical_sector + dio->range.n_sectors > le64_to_cpu(ic->sb->recalc_sector))
   goto skip_check;
  if (ic->mode == 'B') {
   if (!block_bitmap_op(ic, ic->recalc_bitmap, dio->range.logical_sector,
          dio->range.n_sectors, BITMAP_OP_TEST_ALL_CLEAR))
    goto skip_check;
  }

  if (likely(!bio->bi_status))
   integrity_metadata(&dio->work);
  else
skip_check:
   dec_in_flight(dio);

 } else {
  INIT_WORK(&dio->work, integrity_metadata);
  queue_work(ic->metadata_wq, &dio->work);
 }

 return;

journal_read_write:
 if (unlikely(__journal_read_write(dio, bio, journal_section, journal_entry)))
  goto lock_retry;

 do_endio_flush(ic, dio);
}
