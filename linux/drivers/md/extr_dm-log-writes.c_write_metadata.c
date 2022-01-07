
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct log_writes_c {size_t sectorsize; TYPE_2__* logdev; } ;
struct TYPE_3__ {scalar_t__ bi_sector; scalar_t__ bi_size; } ;
struct bio {struct log_writes_c* bi_private; int bi_end_io; TYPE_1__ bi_iter; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {int bdev; } ;


 int DMERR (char*) ;
 int GFP_KERNEL ;
 int REQ_OP_WRITE ;
 scalar_t__ WRITE_LOG_SUPER_SECTOR ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 size_t bio_add_page (struct bio*,struct page*,size_t,int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_put (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int log_end_io ;
 int log_end_super ;
 int memcpy (void*,void*,size_t) ;
 int memset (void*,int ,size_t) ;
 int put_io_block (struct log_writes_c*) ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static int write_metadata(struct log_writes_c *lc, void *entry,
     size_t entrylen, void *data, size_t datalen,
     sector_t sector)
{
 struct bio *bio;
 struct page *page;
 void *ptr;
 size_t ret;

 bio = bio_alloc(GFP_KERNEL, 1);
 if (!bio) {
  DMERR("Couldn't alloc log bio");
  goto error;
 }
 bio->bi_iter.bi_size = 0;
 bio->bi_iter.bi_sector = sector;
 bio_set_dev(bio, lc->logdev->bdev);
 bio->bi_end_io = (sector == WRITE_LOG_SUPER_SECTOR) ?
     log_end_super : log_end_io;
 bio->bi_private = lc;
 bio_set_op_attrs(bio, REQ_OP_WRITE, 0);

 page = alloc_page(GFP_KERNEL);
 if (!page) {
  DMERR("Couldn't alloc log page");
  bio_put(bio);
  goto error;
 }

 ptr = kmap_atomic(page);
 memcpy(ptr, entry, entrylen);
 if (datalen)
  memcpy(ptr + entrylen, data, datalen);
 memset(ptr + entrylen + datalen, 0,
        lc->sectorsize - entrylen - datalen);
 kunmap_atomic(ptr);

 ret = bio_add_page(bio, page, lc->sectorsize, 0);
 if (ret != lc->sectorsize) {
  DMERR("Couldn't add page to the log block");
  goto error_bio;
 }
 submit_bio(bio);
 return 0;
error_bio:
 bio_put(bio);
 __free_page(page);
error:
 put_io_block(lc);
 return -1;
}
