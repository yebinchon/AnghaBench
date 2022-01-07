
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_context {int sc; } ;


 int fimc_clear_addr (struct fimc_context*) ;
 int fimc_sw_reset (struct fimc_context*) ;
 int memset (int *,int,int) ;

__attribute__((used)) static void fimc_reset(struct fimc_context *ctx)
{

 fimc_sw_reset(ctx);


 memset(&ctx->sc, 0x0, sizeof(ctx->sc));

 fimc_clear_addr(ctx);
}
