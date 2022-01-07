
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_wrpll_context {int min_deviation; } ;


 int U64_MAX ;
 int memset (struct skl_wrpll_context*,int ,int) ;

__attribute__((used)) static void skl_wrpll_context_init(struct skl_wrpll_context *ctx)
{
 memset(ctx, 0, sizeof(*ctx));

 ctx->min_deviation = U64_MAX;
}
