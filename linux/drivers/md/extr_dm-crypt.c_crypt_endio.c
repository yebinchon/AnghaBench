
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_crypt_io {scalar_t__ error; struct crypt_config* cc; } ;
struct crypt_config {int dummy; } ;
struct bio {scalar_t__ bi_status; struct dm_crypt_io* bi_private; } ;
typedef scalar_t__ blk_status_t ;


 unsigned int READ ;
 unsigned int WRITE ;
 unsigned int bio_data_dir (struct bio*) ;
 int bio_put (struct bio*) ;
 int crypt_dec_pending (struct dm_crypt_io*) ;
 int crypt_free_buffer_pages (struct crypt_config*,struct bio*) ;
 int kcryptd_queue_crypt (struct dm_crypt_io*) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static void crypt_endio(struct bio *clone)
{
 struct dm_crypt_io *io = clone->bi_private;
 struct crypt_config *cc = io->cc;
 unsigned rw = bio_data_dir(clone);
 blk_status_t error;




 if (rw == WRITE)
  crypt_free_buffer_pages(cc, clone);

 error = clone->bi_status;
 bio_put(clone);

 if (rw == READ && !error) {
  kcryptd_queue_crypt(io);
  return;
 }

 if (unlikely(error))
  io->error = error;

 crypt_dec_pending(io);
}
