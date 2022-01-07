
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_recovery_ctx {size_t total_pages; scalar_t__ pool_offset; int ra_bio; struct page** ra_pool; scalar_t__ valid_pages; } ;
struct r5l_log {int bs; } ;
struct page {int dummy; } ;


 int BIO_MAX_PAGES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t R5L_RECOVERY_PAGE_POOL_SIZE ;
 struct page* alloc_page (int ) ;
 int bio_alloc_bioset (int ,int ,int *) ;
 int bio_put (int ) ;

__attribute__((used)) static int r5l_recovery_allocate_ra_pool(struct r5l_log *log,
         struct r5l_recovery_ctx *ctx)
{
 struct page *page;

 ctx->ra_bio = bio_alloc_bioset(GFP_KERNEL, BIO_MAX_PAGES, &log->bs);
 if (!ctx->ra_bio)
  return -ENOMEM;

 ctx->valid_pages = 0;
 ctx->total_pages = 0;
 while (ctx->total_pages < R5L_RECOVERY_PAGE_POOL_SIZE) {
  page = alloc_page(GFP_KERNEL);

  if (!page)
   break;
  ctx->ra_pool[ctx->total_pages] = page;
  ctx->total_pages += 1;
 }

 if (ctx->total_pages == 0) {
  bio_put(ctx->ra_bio);
  return -ENOMEM;
 }

 ctx->pool_offset = 0;
 return 0;
}
