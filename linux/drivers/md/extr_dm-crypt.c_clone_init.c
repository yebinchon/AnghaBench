
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_crypt_io {TYPE_2__* base_bio; struct crypt_config* cc; } ;
struct crypt_config {TYPE_1__* dev; } ;
struct bio {int bi_opf; int bi_end_io; struct dm_crypt_io* bi_private; } ;
struct TYPE_4__ {int bi_opf; } ;
struct TYPE_3__ {int bdev; } ;


 int bio_set_dev (struct bio*,int ) ;
 int crypt_endio ;

__attribute__((used)) static void clone_init(struct dm_crypt_io *io, struct bio *clone)
{
 struct crypt_config *cc = io->cc;

 clone->bi_private = io;
 clone->bi_end_io = crypt_endio;
 bio_set_dev(clone, cc->dev->bdev);
 clone->bi_opf = io->base_bio->bi_opf;
}
