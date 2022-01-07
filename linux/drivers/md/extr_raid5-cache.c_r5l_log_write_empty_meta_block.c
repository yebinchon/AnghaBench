
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct r5l_meta_block {int checksum; } ;
struct r5l_log {int rdev; int uuid_checksum; } ;
struct page {int dummy; } ;
typedef int sector_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int REQ_FUA ;
 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int cpu_to_le32 (int ) ;
 int crc32c_le (int ,struct r5l_meta_block*,int ) ;
 struct r5l_meta_block* page_address (struct page*) ;
 int r5l_recovery_create_empty_meta_block (struct r5l_log*,struct page*,int ,int ) ;
 int sync_page_io (int ,int ,int ,struct page*,int ,int,int) ;

__attribute__((used)) static int r5l_log_write_empty_meta_block(struct r5l_log *log, sector_t pos,
       u64 seq)
{
 struct page *page;
 struct r5l_meta_block *mb;

 page = alloc_page(GFP_KERNEL);
 if (!page)
  return -ENOMEM;
 r5l_recovery_create_empty_meta_block(log, page, pos, seq);
 mb = page_address(page);
 mb->checksum = cpu_to_le32(crc32c_le(log->uuid_checksum,
          mb, PAGE_SIZE));
 if (!sync_page_io(log->rdev, pos, PAGE_SIZE, page, REQ_OP_WRITE,
     REQ_SYNC | REQ_FUA, 0)) {
  __free_page(page);
  return -EIO;
 }
 __free_page(page);
 return 0;
}
