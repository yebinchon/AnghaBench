
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct r5l_recovery_ctx {int dummy; } ;
struct r5l_log {int uuid_checksum; } ;
struct page {int dummy; } ;
typedef int sector_t ;
typedef int __le32 ;


 int EINVAL ;
 int PAGE_SIZE ;
 scalar_t__ crc32c_le (int ,void*,int ) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int r5l_recovery_read_page (struct r5l_log*,struct r5l_recovery_ctx*,struct page*,int ) ;

__attribute__((used)) static int
r5l_recovery_verify_data_checksum(struct r5l_log *log,
      struct r5l_recovery_ctx *ctx,
      struct page *page,
      sector_t log_offset, __le32 log_checksum)
{
 void *addr;
 u32 checksum;

 r5l_recovery_read_page(log, ctx, page, log_offset);
 addr = kmap_atomic(page);
 checksum = crc32c_le(log->uuid_checksum, addr, PAGE_SIZE);
 kunmap_atomic(addr);
 return (le32_to_cpu(log_checksum) == checksum) ? 0 : -EINVAL;
}
