
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cc_pending; } ;
struct dm_crypt_io {TYPE_1__ ctx; scalar_t__ error; int sector; int base_bio; struct crypt_config* cc; } ;
struct crypt_config {int dummy; } ;
typedef scalar_t__ blk_status_t ;


 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ crypt_convert (struct crypt_config*,TYPE_1__*) ;
 int crypt_convert_init (struct crypt_config*,TYPE_1__*,int ,int ,int ) ;
 int crypt_dec_pending (struct dm_crypt_io*) ;
 int crypt_inc_pending (struct dm_crypt_io*) ;
 int kcryptd_crypt_read_done (struct dm_crypt_io*) ;

__attribute__((used)) static void kcryptd_crypt_read_convert(struct dm_crypt_io *io)
{
 struct crypt_config *cc = io->cc;
 blk_status_t r;

 crypt_inc_pending(io);

 crypt_convert_init(cc, &io->ctx, io->base_bio, io->base_bio,
      io->sector);

 r = crypt_convert(cc, &io->ctx);
 if (r)
  io->error = r;

 if (atomic_dec_and_test(&io->ctx.cc_pending))
  kcryptd_crypt_read_done(io);

 crypt_dec_pending(io);
}
