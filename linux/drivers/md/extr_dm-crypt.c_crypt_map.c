
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct skcipher_request {int dummy; } ;
struct dm_target {struct crypt_config* private; } ;
struct TYPE_7__ {struct skcipher_request* req; struct aead_request* req_aead; } ;
struct TYPE_8__ {TYPE_3__ r; } ;
struct dm_crypt_io {int integrity_metadata_from_pool; struct bio* base_bio; TYPE_4__ ctx; int integrity_metadata; } ;
struct crypt_config {int start; int on_disk_tag_size; int sector_size; int sector_shift; int tag_pool_max_sectors; int tag_pool; int per_bio_data_size; TYPE_1__* dev; } ;
struct TYPE_6__ {int bi_sector; int bi_size; } ;
struct bio {int bi_opf; TYPE_2__ bi_iter; } ;
struct aead_request {int dummy; } ;
struct TYPE_5__ {int bdev; } ;


 int BIO_MAX_PAGES ;
 int DM_MAPIO_KILL ;
 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 int GFP_NOIO ;
 int GFP_NOWAIT ;
 unsigned int KMALLOC_MAX_SIZE ;
 int PAGE_SHIFT ;
 scalar_t__ READ ;
 scalar_t__ REQ_OP_DISCARD ;
 int REQ_PREFLUSH ;
 int SECTOR_SHIFT ;
 scalar_t__ WRITE ;
 int __GFP_NOMEMALLOC ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 scalar_t__ bio_data_dir (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_sectors (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 scalar_t__ crypt_integrity_aead (struct crypt_config*) ;
 int crypt_io_init (struct dm_crypt_io*,struct crypt_config*,struct bio*,int) ;
 int dm_accept_partial_bio (struct bio*,int) ;
 struct dm_crypt_io* dm_per_bio_data (struct bio*,int ) ;
 int dm_target_offset (struct dm_target*,int) ;
 scalar_t__ kcryptd_io_read (struct dm_crypt_io*,int ) ;
 int kcryptd_queue_crypt (struct dm_crypt_io*) ;
 int kcryptd_queue_read (struct dm_crypt_io*) ;
 int kmalloc (unsigned int,int) ;
 int mempool_alloc (int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int crypt_map(struct dm_target *ti, struct bio *bio)
{
 struct dm_crypt_io *io;
 struct crypt_config *cc = ti->private;






 if (unlikely(bio->bi_opf & REQ_PREFLUSH ||
     bio_op(bio) == REQ_OP_DISCARD)) {
  bio_set_dev(bio, cc->dev->bdev);
  if (bio_sectors(bio))
   bio->bi_iter.bi_sector = cc->start +
    dm_target_offset(ti, bio->bi_iter.bi_sector);
  return DM_MAPIO_REMAPPED;
 }




 if (unlikely(bio->bi_iter.bi_size > (BIO_MAX_PAGES << PAGE_SHIFT)) &&
     (bio_data_dir(bio) == WRITE || cc->on_disk_tag_size))
  dm_accept_partial_bio(bio, ((BIO_MAX_PAGES << PAGE_SHIFT) >> SECTOR_SHIFT));





 if (unlikely((bio->bi_iter.bi_sector & ((cc->sector_size >> SECTOR_SHIFT) - 1)) != 0))
  return DM_MAPIO_KILL;

 if (unlikely(bio->bi_iter.bi_size & (cc->sector_size - 1)))
  return DM_MAPIO_KILL;

 io = dm_per_bio_data(bio, cc->per_bio_data_size);
 crypt_io_init(io, cc, bio, dm_target_offset(ti, bio->bi_iter.bi_sector));

 if (cc->on_disk_tag_size) {
  unsigned tag_len = cc->on_disk_tag_size * (bio_sectors(bio) >> cc->sector_shift);

  if (unlikely(tag_len > KMALLOC_MAX_SIZE) ||
      unlikely(!(io->integrity_metadata = kmalloc(tag_len,
    GFP_NOIO | __GFP_NORETRY | __GFP_NOMEMALLOC | __GFP_NOWARN)))) {
   if (bio_sectors(bio) > cc->tag_pool_max_sectors)
    dm_accept_partial_bio(bio, cc->tag_pool_max_sectors);
   io->integrity_metadata = mempool_alloc(&cc->tag_pool, GFP_NOIO);
   io->integrity_metadata_from_pool = 1;
  }
 }

 if (crypt_integrity_aead(cc))
  io->ctx.r.req_aead = (struct aead_request *)(io + 1);
 else
  io->ctx.r.req = (struct skcipher_request *)(io + 1);

 if (bio_data_dir(io->base_bio) == READ) {
  if (kcryptd_io_read(io, GFP_NOWAIT))
   kcryptd_queue_read(io);
 } else
  kcryptd_queue_crypt(io);

 return DM_MAPIO_SUBMITTED;
}
