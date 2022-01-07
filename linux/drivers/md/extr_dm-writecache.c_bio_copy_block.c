
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {unsigned int block_size; } ;
struct bio_vec {unsigned int bv_len; } ;
struct bio {int bi_status; int bi_iter; } ;


 int BLK_STS_IOERR ;
 int READ ;
 int bio_advance (struct bio*,unsigned int) ;
 int bio_data_dir (struct bio*) ;
 struct bio_vec bio_iter_iovec (struct bio*,int ) ;
 int bio_page (struct bio*) ;
 void* bvec_kmap_irq (struct bio_vec*,unsigned long*) ;
 int bvec_kunmap_irq (void*,unsigned long*) ;
 int flush_dcache_page (int ) ;
 int memcpy_flushcache (void*,void*,unsigned int) ;
 int memcpy_mcsafe (void*,void*,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int writecache_error (struct dm_writecache*,int,char*,int) ;

__attribute__((used)) static void bio_copy_block(struct dm_writecache *wc, struct bio *bio, void *data)
{
 void *buf;
 unsigned long flags;
 unsigned size;
 int rw = bio_data_dir(bio);
 unsigned remaining_size = wc->block_size;

 do {
  struct bio_vec bv = bio_iter_iovec(bio, bio->bi_iter);
  buf = bvec_kmap_irq(&bv, &flags);
  size = bv.bv_len;
  if (unlikely(size > remaining_size))
   size = remaining_size;

  if (rw == READ) {
   int r;
   r = memcpy_mcsafe(buf, data, size);
   flush_dcache_page(bio_page(bio));
   if (unlikely(r)) {
    writecache_error(wc, r, "hardware memory error when reading data: %d", r);
    bio->bi_status = BLK_STS_IOERR;
   }
  } else {
   flush_dcache_page(bio_page(bio));
   memcpy_flushcache(data, buf, size);
  }

  bvec_kunmap_irq(buf, &flags);

  data = (char *)data + size;
  remaining_size -= size;
  bio_advance(bio, size);
 } while (unlikely(remaining_size));
}
