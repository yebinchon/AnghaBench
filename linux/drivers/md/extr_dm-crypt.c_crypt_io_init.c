
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * req; } ;
struct TYPE_3__ {TYPE_2__ r; } ;
struct dm_crypt_io {int integrity_metadata_from_pool; int io_pending; int * integrity_metadata; TYPE_1__ ctx; scalar_t__ error; int sector; struct bio* base_bio; struct crypt_config* cc; } ;
struct crypt_config {int dummy; } ;
struct bio {int dummy; } ;
typedef int sector_t ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void crypt_io_init(struct dm_crypt_io *io, struct crypt_config *cc,
     struct bio *bio, sector_t sector)
{
 io->cc = cc;
 io->base_bio = bio;
 io->sector = sector;
 io->error = 0;
 io->ctx.r.req = ((void*)0);
 io->integrity_metadata = ((void*)0);
 io->integrity_metadata_from_pool = 0;
 atomic_set(&io->io_pending, 0);
}
