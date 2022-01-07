
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mapped_device {int queue; struct dm_target* immutable_target; } ;
struct dm_target {int dummy; } ;
struct dm_table {int dummy; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int blk_qc_t ;
struct TYPE_4__ {scalar_t__ bio_list; } ;


 int BLK_QC_T_NONE ;
 scalar_t__ DM_TYPE_NVME_BIO_BASED ;
 int __process_bio (struct mapped_device*,struct dm_table*,struct bio*,struct dm_target*) ;
 int __split_and_process_bio (struct mapped_device*,struct dm_table*,struct bio*) ;
 int bio_io_error (struct bio*) ;
 int blk_queue_split (int ,struct bio**) ;
 TYPE_2__* current ;
 scalar_t__ dm_get_md_type (struct mapped_device*) ;
 int dm_queue_split (struct mapped_device*,struct dm_target*,struct bio**) ;
 struct dm_target* dm_table_find_target (struct dm_table*,int ) ;
 int is_abnormal_io (struct bio*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static blk_qc_t dm_process_bio(struct mapped_device *md,
          struct dm_table *map, struct bio *bio)
{
 blk_qc_t ret = BLK_QC_T_NONE;
 struct dm_target *ti = md->immutable_target;

 if (unlikely(!map)) {
  bio_io_error(bio);
  return ret;
 }

 if (!ti) {
  ti = dm_table_find_target(map, bio->bi_iter.bi_sector);
  if (unlikely(!ti)) {
   bio_io_error(bio);
   return ret;
  }
 }






 if (current->bio_list) {
  blk_queue_split(md->queue, &bio);
  if (!is_abnormal_io(bio))
   dm_queue_split(md, ti, &bio);
 }

 if (dm_get_md_type(md) == DM_TYPE_NVME_BIO_BASED)
  return __process_bio(md, map, bio, ti);
 else
  return __split_and_process_bio(md, map, bio);
}
