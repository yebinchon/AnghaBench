
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cc_pending; int iter_out; struct bio* bio_out; } ;
struct dm_crypt_io {int sector; TYPE_2__ ctx; scalar_t__ error; TYPE_3__* base_bio; struct crypt_config* cc; } ;
struct crypt_config {int dummy; } ;
struct bio {int bi_iter; } ;
typedef int sector_t ;
typedef scalar_t__ blk_status_t ;
struct TYPE_5__ {int bi_size; } ;
struct TYPE_7__ {TYPE_1__ bi_iter; } ;


 scalar_t__ BLK_STS_IOERR ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ bio_sectors (struct bio*) ;
 struct bio* crypt_alloc_buffer (struct dm_crypt_io*,int ) ;
 scalar_t__ crypt_convert (struct crypt_config*,TYPE_2__*) ;
 int crypt_convert_init (struct crypt_config*,TYPE_2__*,int *,TYPE_3__*,int ) ;
 int crypt_dec_pending (struct dm_crypt_io*) ;
 int crypt_inc_pending (struct dm_crypt_io*) ;
 int kcryptd_crypt_write_io_submit (struct dm_crypt_io*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void kcryptd_crypt_write_convert(struct dm_crypt_io *io)
{
 struct crypt_config *cc = io->cc;
 struct bio *clone;
 int crypt_finished;
 sector_t sector = io->sector;
 blk_status_t r;




 crypt_inc_pending(io);
 crypt_convert_init(cc, &io->ctx, ((void*)0), io->base_bio, sector);

 clone = crypt_alloc_buffer(io, io->base_bio->bi_iter.bi_size);
 if (unlikely(!clone)) {
  io->error = BLK_STS_IOERR;
  goto dec;
 }

 io->ctx.bio_out = clone;
 io->ctx.iter_out = clone->bi_iter;

 sector += bio_sectors(clone);

 crypt_inc_pending(io);
 r = crypt_convert(cc, &io->ctx);
 if (r)
  io->error = r;
 crypt_finished = atomic_dec_and_test(&io->ctx.cc_pending);


 if (crypt_finished) {
  kcryptd_crypt_write_io_submit(io, 0);
  io->sector = sector;
 }

dec:
 crypt_dec_pending(io);
}
