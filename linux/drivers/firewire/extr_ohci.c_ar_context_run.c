
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_context {int descriptors_bus; int regs; int ohci; int buffer; int pointer; } ;


 unsigned int AR_BUFFERS ;
 int COMMAND_PTR (int ) ;
 int CONTEXT_RUN ;
 int CONTROL_SET (int ) ;
 int ar_context_link_page (struct ar_context*,unsigned int) ;
 int reg_write (int ,int ,int) ;

__attribute__((used)) static void ar_context_run(struct ar_context *ctx)
{
 unsigned int i;

 for (i = 0; i < AR_BUFFERS; i++)
  ar_context_link_page(ctx, i);

 ctx->pointer = ctx->buffer;

 reg_write(ctx->ohci, COMMAND_PTR(ctx->regs), ctx->descriptors_bus | 1);
 reg_write(ctx->ohci, CONTROL_SET(ctx->regs), CONTEXT_RUN);
}
