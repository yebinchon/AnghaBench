
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_crypt_io {scalar_t__ sector; int base_bio; struct crypt_config* cc; } ;
struct crypt_config {scalar_t__ start; int bs; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int gfp_t ;


 struct bio* bio_clone_fast (int ,int ,int *) ;
 int bio_put (struct bio*) ;
 int clone_init (struct dm_crypt_io*,struct bio*) ;
 int crypt_dec_pending (struct dm_crypt_io*) ;
 int crypt_inc_pending (struct dm_crypt_io*) ;
 scalar_t__ dm_crypt_integrity_io_alloc (struct dm_crypt_io*,struct bio*) ;
 int generic_make_request (struct bio*) ;

__attribute__((used)) static int kcryptd_io_read(struct dm_crypt_io *io, gfp_t gfp)
{
 struct crypt_config *cc = io->cc;
 struct bio *clone;







 clone = bio_clone_fast(io->base_bio, gfp, &cc->bs);
 if (!clone)
  return 1;

 crypt_inc_pending(io);

 clone_init(io, clone);
 clone->bi_iter.bi_sector = cc->start + io->sector;

 if (dm_crypt_integrity_io_alloc(io, clone)) {
  crypt_dec_pending(io);
  bio_put(clone);
  return 1;
 }

 generic_make_request(clone);
 return 0;
}
