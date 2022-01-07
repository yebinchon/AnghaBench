
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int flushing; int tasklet; } ;


 int context_tasklet (unsigned long) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static void at_context_flush(struct context *ctx)
{
 tasklet_disable(&ctx->tasklet);

 ctx->flushing = 1;
 context_tasklet((unsigned long)ctx);
 ctx->flushing = 0;

 tasklet_enable(&ctx->tasklet);
}
