
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_target_io {int dummy; } ;
struct dm_target {int dummy; } ;
struct dm_table {int dummy; } ;
struct clone_info {int io; scalar_t__ sector_count; struct bio* bio; } ;
struct bio {int bi_opf; } ;
typedef int blk_qc_t ;


 int BLK_QC_T_NONE ;
 int GFP_NOIO ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 int __clone_and_map_simple_bio (struct clone_info*,struct dm_target_io*,int *) ;
 scalar_t__ __process_abnormal_io (struct clone_info*,struct dm_target*,int*) ;
 int __send_empty_flush (struct clone_info*) ;
 struct dm_target_io* alloc_tio (struct clone_info*,struct dm_target*,int ,int ) ;
 int bio_init (struct bio*,int *,int ) ;
 scalar_t__ bio_sectors (struct bio*) ;
 int dec_pending (int ,int ) ;
 int errno_to_blk_status (int) ;
 int init_clone_info (struct clone_info*,struct mapped_device*,struct dm_table*,struct bio*) ;

__attribute__((used)) static blk_qc_t __process_bio(struct mapped_device *md, struct dm_table *map,
         struct bio *bio, struct dm_target *ti)
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

 } else {
  struct dm_target_io *tio;

  ci.bio = bio;
  ci.sector_count = bio_sectors(bio);
  if (__process_abnormal_io(&ci, ti, &error))
   goto out;

  tio = alloc_tio(&ci, ti, 0, GFP_NOIO);
  ret = __clone_and_map_simple_bio(&ci, tio, ((void*)0));
 }
out:

 dec_pending(ci.io, errno_to_blk_status(error));
 return ret;
}
