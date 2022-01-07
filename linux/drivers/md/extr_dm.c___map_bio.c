
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mapped_device {int type; } ;
struct TYPE_4__ {int bi_sector; } ;
struct bio {TYPE_3__* bi_disk; TYPE_1__ bi_iter; int bi_end_io; } ;
struct dm_target_io {struct dm_target* ti; struct dm_io* io; struct bio clone; } ;
struct dm_target {TYPE_2__* type; } ;
struct dm_io {int orig_bio; int io_count; struct mapped_device* md; } ;
typedef int sector_t ;
typedef int blk_qc_t ;
struct TYPE_6__ {int queue; } ;
struct TYPE_5__ {int (* map ) (struct dm_target*,struct bio*) ;} ;


 int BLK_QC_T_NONE ;
 int BLK_STS_DM_REQUEUE ;
 int BLK_STS_IOERR ;
 int BUG () ;
 int DMWARN (char*,int) ;




 int DM_TYPE_NVME_BIO_BASED ;
 int atomic_inc (int *) ;
 int bio_dev (int ) ;
 int clone_endio ;
 int dec_pending (struct dm_io*,int ) ;
 int direct_make_request (struct bio*) ;
 int free_tio (struct dm_target_io*) ;
 int generic_make_request (struct bio*) ;
 int stub1 (struct dm_target*,struct bio*) ;
 int trace_block_bio_remap (int ,struct bio*,int ,int ) ;

__attribute__((used)) static blk_qc_t __map_bio(struct dm_target_io *tio)
{
 int r;
 sector_t sector;
 struct bio *clone = &tio->clone;
 struct dm_io *io = tio->io;
 struct mapped_device *md = io->md;
 struct dm_target *ti = tio->ti;
 blk_qc_t ret = BLK_QC_T_NONE;

 clone->bi_end_io = clone_endio;






 atomic_inc(&io->io_count);
 sector = clone->bi_iter.bi_sector;

 r = ti->type->map(ti, clone);
 switch (r) {
 case 128:
  break;
 case 130:

  trace_block_bio_remap(clone->bi_disk->queue, clone,
          bio_dev(io->orig_bio), sector);
  if (md->type == DM_TYPE_NVME_BIO_BASED)
   ret = direct_make_request(clone);
  else
   ret = generic_make_request(clone);
  break;
 case 131:
  free_tio(tio);
  dec_pending(io, BLK_STS_IOERR);
  break;
 case 129:
  free_tio(tio);
  dec_pending(io, BLK_STS_DM_REQUEUE);
  break;
 default:
  DMWARN("unimplemented target map return value: %d", r);
  BUG();
 }

 return ret;
}
