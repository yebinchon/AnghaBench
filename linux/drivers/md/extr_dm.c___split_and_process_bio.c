
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mapped_device {TYPE_2__* queue; } ;
struct dm_table {int dummy; } ;
struct clone_info {TYPE_4__* io; scalar_t__ sector_count; struct bio* bio; } ;
struct TYPE_6__ {int bi_sector; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;
typedef int blk_qc_t ;
struct TYPE_10__ {scalar_t__ bio_list; } ;
struct TYPE_9__ {struct bio* orig_bio; } ;
struct TYPE_8__ {int part0; } ;
struct TYPE_7__ {int bio_split; } ;


 int BLK_QC_T_NONE ;
 int GFP_NOIO ;
 int REQ_OP_WRITE ;
 scalar_t__ REQ_OP_ZONE_RESET ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 int __dm_part_stat_sub (int *,int ,scalar_t__) ;
 int __send_empty_flush (struct clone_info*) ;
 int __split_and_process_non_flush (struct clone_info*) ;
 int bio_chain (struct bio*,struct bio*) ;
 int bio_init (struct bio*,int *,int ) ;
 scalar_t__ bio_op (struct bio*) ;
 scalar_t__ bio_sectors (struct bio*) ;
 struct bio* bio_split (struct bio*,scalar_t__,int ,int *) ;
 TYPE_5__* current ;
 int dec_pending (TYPE_4__*,int ) ;
 TYPE_3__* dm_disk (struct mapped_device*) ;
 int errno_to_blk_status (int) ;
 int generic_make_request (struct bio*) ;
 int init_clone_info (struct clone_info*,struct mapped_device*,struct dm_table*,struct bio*) ;
 size_t op_stat_group (scalar_t__) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int * sectors ;
 int trace_block_split (TYPE_2__*,struct bio*,int ) ;

__attribute__((used)) static blk_qc_t __split_and_process_bio(struct mapped_device *md,
     struct dm_table *map, struct bio *bio)
{
 struct clone_info ci;
 blk_qc_t ret = BLK_QC_T_NONE;
 int error = 0;

 init_clone_info(&ci, md, map, bio);

 if (bio->bi_opf & REQ_PREFLUSH) {
  struct bio flush_bio;






  bio_init(&flush_bio, ((void*)0), 0);
  flush_bio.bi_opf = REQ_OP_WRITE | REQ_PREFLUSH | REQ_SYNC;
  ci.bio = &flush_bio;
  ci.sector_count = 0;
  error = __send_empty_flush(&ci);

 } else if (bio_op(bio) == REQ_OP_ZONE_RESET) {
  ci.bio = bio;
  ci.sector_count = 0;
  error = __split_and_process_non_flush(&ci);
 } else {
  ci.bio = bio;
  ci.sector_count = bio_sectors(bio);
  while (ci.sector_count && !error) {
   error = __split_and_process_non_flush(&ci);
   if (current->bio_list && ci.sector_count && !error) {
    struct bio *b = bio_split(bio, bio_sectors(bio) - ci.sector_count,
         GFP_NOIO, &md->queue->bio_split);
    ci.io->orig_bio = b;
    part_stat_lock();
    __dm_part_stat_sub(&dm_disk(md)->part0,
         sectors[op_stat_group(bio_op(bio))], ci.sector_count);
    part_stat_unlock();

    bio_chain(b, bio);
    trace_block_split(md->queue, b, bio->bi_iter.bi_sector);
    ret = generic_make_request(bio);
    break;
   }
  }
 }


 dec_pending(ci.io, errno_to_blk_status(error));
 return ret;
}
