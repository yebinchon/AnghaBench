
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct descriptor_buffer {int buffer_bus; int used; struct descriptor* buffer; } ;
struct descriptor {int control; void* branch_address; } ;
struct context {int prev_z; struct descriptor* prev; TYPE_1__* ohci; struct descriptor_buffer* buffer_tail; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int quirks; } ;


 int DESCRIPTOR_CMD ;
 int DESCRIPTOR_INPUT_MORE ;
 int QUIRK_IR_WAKE ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 struct descriptor* find_branch_descriptor (struct descriptor*,int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static void context_append(struct context *ctx,
      struct descriptor *d, int z, int extra)
{
 dma_addr_t d_bus;
 struct descriptor_buffer *desc = ctx->buffer_tail;
 struct descriptor *d_branch;

 d_bus = desc->buffer_bus + (d - desc->buffer) * sizeof(*d);

 desc->used += (z + extra) * sizeof(*d);

 wmb();

 d_branch = find_branch_descriptor(ctx->prev, ctx->prev_z);
 d_branch->branch_address = cpu_to_le32(d_bus | z);
 if (unlikely(ctx->ohci->quirks & QUIRK_IR_WAKE) &&
     d_branch != ctx->prev &&
     (ctx->prev->control & cpu_to_le16(DESCRIPTOR_CMD)) ==
      cpu_to_le16(DESCRIPTOR_INPUT_MORE)) {
  ctx->prev->branch_address = cpu_to_le32(d_bus | z);
 }

 ctx->prev = d;
 ctx->prev_z = z;
}
