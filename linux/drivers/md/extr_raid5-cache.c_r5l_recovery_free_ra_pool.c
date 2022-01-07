
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_recovery_ctx {int total_pages; int ra_bio; int * ra_pool; } ;
struct r5l_log {int dummy; } ;


 int bio_put (int ) ;
 int put_page (int ) ;

__attribute__((used)) static void r5l_recovery_free_ra_pool(struct r5l_log *log,
     struct r5l_recovery_ctx *ctx)
{
 int i;

 for (i = 0; i < ctx->total_pages; ++i)
  put_page(ctx->ra_pool[i]);
 bio_put(ctx->ra_bio);
}
