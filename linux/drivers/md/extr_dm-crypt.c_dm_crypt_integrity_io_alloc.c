
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_crypt_io {int integrity_metadata; scalar_t__ sector; TYPE_2__* cc; } ;
struct TYPE_3__ {unsigned int bi_size; scalar_t__ bi_sector; } ;
struct bio_integrity_payload {TYPE_1__ bip_iter; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {unsigned int on_disk_tag_size; unsigned int sector_shift; scalar_t__ start; } ;


 int ENOMEM ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (struct bio_integrity_payload*) ;
 int PTR_ERR (struct bio_integrity_payload*) ;
 int bio_integrity_add_page (struct bio*,int ,unsigned int,int ) ;
 struct bio_integrity_payload* bio_integrity_alloc (struct bio*,int ,int) ;
 unsigned int bio_sectors (struct bio*) ;
 int offset_in_page (int ) ;
 scalar_t__ unlikely (int) ;
 int virt_to_page (int ) ;

__attribute__((used)) static int dm_crypt_integrity_io_alloc(struct dm_crypt_io *io, struct bio *bio)
{
 struct bio_integrity_payload *bip;
 unsigned int tag_len;
 int ret;

 if (!bio_sectors(bio) || !io->cc->on_disk_tag_size)
  return 0;

 bip = bio_integrity_alloc(bio, GFP_NOIO, 1);
 if (IS_ERR(bip))
  return PTR_ERR(bip);

 tag_len = io->cc->on_disk_tag_size * (bio_sectors(bio) >> io->cc->sector_shift);

 bip->bip_iter.bi_size = tag_len;
 bip->bip_iter.bi_sector = io->cc->start + io->sector;

 ret = bio_integrity_add_page(bio, virt_to_page(io->integrity_metadata),
         tag_len, offset_in_page(io->integrity_metadata));
 if (unlikely(ret != tag_len))
  return -ENOMEM;

 return 0;
}
