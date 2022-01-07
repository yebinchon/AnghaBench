
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ar_context {TYPE_2__* ohci; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ card; } ;


 int DMA_FROM_DEVICE ;
 unsigned int PAGE_SIZE ;
 int ar_buffer_bus (struct ar_context*,unsigned int) ;
 unsigned int ar_first_buffer_index (struct ar_context*) ;
 unsigned int ar_next_buffer_index (unsigned int) ;
 int dma_sync_single_for_cpu (int ,int ,unsigned int,int ) ;

__attribute__((used)) static void ar_sync_buffers_for_cpu(struct ar_context *ctx,
        unsigned int end_buffer_index,
        unsigned int end_buffer_offset)
{
 unsigned int i;

 i = ar_first_buffer_index(ctx);
 while (i != end_buffer_index) {
  dma_sync_single_for_cpu(ctx->ohci->card.device,
     ar_buffer_bus(ctx, i),
     PAGE_SIZE, DMA_FROM_DEVICE);
  i = ar_next_buffer_index(i);
 }
 if (end_buffer_offset > 0)
  dma_sync_single_for_cpu(ctx->ohci->card.device,
     ar_buffer_bus(ctx, i),
     end_buffer_offset, DMA_FROM_DEVICE);
}
