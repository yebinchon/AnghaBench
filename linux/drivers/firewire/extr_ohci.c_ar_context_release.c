
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ar_context {scalar_t__* pages; TYPE_2__* ohci; int buffer; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ card; } ;


 unsigned int AR_BUFFERS ;
 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int __free_page (scalar_t__) ;
 int ar_buffer_bus (struct ar_context*,unsigned int) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int vunmap (int ) ;

__attribute__((used)) static void ar_context_release(struct ar_context *ctx)
{
 unsigned int i;

 vunmap(ctx->buffer);

 for (i = 0; i < AR_BUFFERS; i++)
  if (ctx->pages[i]) {
   dma_unmap_page(ctx->ohci->card.device,
           ar_buffer_bus(ctx, i),
           PAGE_SIZE, DMA_FROM_DEVICE);
   __free_page(ctx->pages[i]);
  }
}
