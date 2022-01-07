
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descriptor {int branch_address; scalar_t__ transfer_status; int res_count; } ;
struct ar_context {size_t last_buffer_index; int regs; int ohci; struct descriptor* descriptors; } ;


 int CONTEXT_WAKE ;
 int CONTROL_SET (int ) ;
 int PAGE_SIZE ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int) ;
 int reg_write (int ,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void ar_context_link_page(struct ar_context *ctx, unsigned int index)
{
 struct descriptor *d;

 d = &ctx->descriptors[index];
 d->branch_address &= cpu_to_le32(~0xf);
 d->res_count = cpu_to_le16(PAGE_SIZE);
 d->transfer_status = 0;

 wmb();
 d = &ctx->descriptors[ctx->last_buffer_index];
 d->branch_address |= cpu_to_le32(1);

 ctx->last_buffer_index = index;

 reg_write(ctx->ohci, CONTROL_SET(ctx->regs), CONTEXT_WAKE);
}
