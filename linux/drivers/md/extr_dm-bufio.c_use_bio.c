
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_buffer {scalar_t__ data; TYPE_2__* c; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {struct dm_buffer* bi_private; int bi_end_io; TYPE_1__ bi_iter; } ;
typedef int sector_t ;
struct TYPE_4__ {scalar_t__ block_size; scalar_t__ sectors_per_block_bits; int bdev; } ;


 int GFP_NOWAIT ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ SECTOR_SHIFT ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int bio_add_page (struct bio*,int ,unsigned int,scalar_t__) ;
 int bio_complete ;
 struct bio* bio_kmalloc (int,unsigned int) ;
 int bio_put (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int,int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 scalar_t__ offset_in_page (char*) ;
 int submit_bio (struct bio*) ;
 scalar_t__ unlikely (int) ;
 int use_dmio (struct dm_buffer*,int,int ,unsigned int,unsigned int) ;
 int virt_to_page (char*) ;

__attribute__((used)) static void use_bio(struct dm_buffer *b, int rw, sector_t sector,
      unsigned n_sectors, unsigned offset)
{
 struct bio *bio;
 char *ptr;
 unsigned vec_size, len;

 vec_size = b->c->block_size >> PAGE_SHIFT;
 if (unlikely(b->c->sectors_per_block_bits < PAGE_SHIFT - SECTOR_SHIFT))
  vec_size += 2;

 bio = bio_kmalloc(GFP_NOWAIT | __GFP_NORETRY | __GFP_NOWARN, vec_size);
 if (!bio) {
dmio:
  use_dmio(b, rw, sector, n_sectors, offset);
  return;
 }

 bio->bi_iter.bi_sector = sector;
 bio_set_dev(bio, b->c->bdev);
 bio_set_op_attrs(bio, rw, 0);
 bio->bi_end_io = bio_complete;
 bio->bi_private = b;

 ptr = (char *)b->data + offset;
 len = n_sectors << SECTOR_SHIFT;

 do {
  unsigned this_step = min((unsigned)(PAGE_SIZE - offset_in_page(ptr)), len);
  if (!bio_add_page(bio, virt_to_page(ptr), this_step,
      offset_in_page(ptr))) {
   bio_put(bio);
   goto dmio;
  }

  len -= this_step;
  ptr += this_step;
 } while (len > 0);

 submit_bio(bio);
}
