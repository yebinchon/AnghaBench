
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int req; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct dm_crypt_io {int integrity_metadata; struct crypt_config* cc; int integrity_metadata_from_pool; TYPE_2__ ctx; int io_pending; int error; struct bio* base_bio; } ;
struct crypt_config {int tag_pool; } ;
struct bio {int bi_status; } ;
typedef int blk_status_t ;


 int atomic_dec_and_test (int *) ;
 int bio_endio (struct bio*) ;
 int crypt_free_req (struct crypt_config*,int ,struct bio*) ;
 int kfree (int ) ;
 int mempool_free (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void crypt_dec_pending(struct dm_crypt_io *io)
{
 struct crypt_config *cc = io->cc;
 struct bio *base_bio = io->base_bio;
 blk_status_t error = io->error;

 if (!atomic_dec_and_test(&io->io_pending))
  return;

 if (io->ctx.r.req)
  crypt_free_req(cc, io->ctx.r.req, base_bio);

 if (unlikely(io->integrity_metadata_from_pool))
  mempool_free(io->integrity_metadata, &io->cc->tag_pool);
 else
  kfree(io->integrity_metadata);

 base_bio->bi_status = error;
 bio_endio(base_bio);
}
