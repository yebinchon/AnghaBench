
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct mapped_device* queuedata; } ;
struct mapped_device {int flags; } ;
struct dm_table {int dummy; } ;
struct bio {int bi_opf; } ;
typedef int blk_qc_t ;


 int BLK_QC_T_NONE ;
 int DMF_BLOCK_IO_FOR_SUSPEND ;
 int REQ_RAHEAD ;
 int bio_io_error (struct bio*) ;
 struct dm_table* dm_get_live_table (struct mapped_device*,int*) ;
 int dm_process_bio (struct mapped_device*,struct dm_table*,struct bio*) ;
 int dm_put_live_table (struct mapped_device*,int) ;
 int queue_io (struct mapped_device*,struct bio*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static blk_qc_t dm_make_request(struct request_queue *q, struct bio *bio)
{
 struct mapped_device *md = q->queuedata;
 blk_qc_t ret = BLK_QC_T_NONE;
 int srcu_idx;
 struct dm_table *map;

 map = dm_get_live_table(md, &srcu_idx);


 if (unlikely(test_bit(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags))) {
  dm_put_live_table(md, srcu_idx);

  if (!(bio->bi_opf & REQ_RAHEAD))
   queue_io(md, bio);
  else
   bio_io_error(bio);
  return ret;
 }

 ret = dm_process_bio(md, map, bio);

 dm_put_live_table(md, srcu_idx);
 return ret;
}
