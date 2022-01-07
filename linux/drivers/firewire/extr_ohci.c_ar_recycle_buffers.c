
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
 int PAGE_SIZE ;
 int ar_buffer_bus (struct ar_context*,unsigned int) ;
 int ar_context_link_page (struct ar_context*,unsigned int) ;
 unsigned int ar_first_buffer_index (struct ar_context*) ;
 unsigned int ar_next_buffer_index (unsigned int) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;

__attribute__((used)) static void ar_recycle_buffers(struct ar_context *ctx, unsigned int end_buffer)
{
 unsigned int i;

 i = ar_first_buffer_index(ctx);
 while (i != end_buffer) {
  dma_sync_single_for_device(ctx->ohci->card.device,
        ar_buffer_bus(ctx, i),
        PAGE_SIZE, DMA_FROM_DEVICE);
  ar_context_link_page(ctx, i);
  i = ar_next_buffer_index(i);
 }
}
