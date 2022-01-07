
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_recovery_ctx {scalar_t__ pool_offset; int valid_pages; struct page** ra_pool; } ;
struct r5l_log {int dummy; } ;
struct page {int dummy; } ;
typedef scalar_t__ sector_t ;


 int BLOCK_SECTORS ;
 scalar_t__ BLOCK_SECTOR_SHIFT ;
 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int memcpy (int ,int ,int ) ;
 int page_address (struct page*) ;
 int r5l_recovery_fetch_ra_pool (struct r5l_log*,struct r5l_recovery_ctx*,scalar_t__) ;

__attribute__((used)) static int r5l_recovery_read_page(struct r5l_log *log,
      struct r5l_recovery_ctx *ctx,
      struct page *page,
      sector_t offset)
{
 int ret;

 if (offset < ctx->pool_offset ||
     offset >= ctx->pool_offset + ctx->valid_pages * BLOCK_SECTORS) {
  ret = r5l_recovery_fetch_ra_pool(log, ctx, offset);
  if (ret)
   return ret;
 }

 BUG_ON(offset < ctx->pool_offset ||
        offset >= ctx->pool_offset + ctx->valid_pages * BLOCK_SECTORS);

 memcpy(page_address(page),
        page_address(ctx->ra_pool[(offset - ctx->pool_offset) >>
      BLOCK_SECTOR_SHIFT]),
        PAGE_SIZE);
 return 0;
}
