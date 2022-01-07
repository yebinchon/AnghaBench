
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* mc ) (TYPE_5__*,scalar_t__,int ) ;} ;
struct TYPE_10__ {int callback_data; TYPE_1__ callback; } ;
struct TYPE_9__ {TYPE_3__* ohci; } ;
struct iso_context {int mc_buffer_bus; scalar_t__ mc_completed; TYPE_5__ base; TYPE_4__ context; } ;
struct TYPE_7__ {int device; } ;
struct TYPE_8__ {TYPE_2__ card; } ;


 int DMA_FROM_DEVICE ;
 int PAGE_MASK ;
 int dma_sync_single_range_for_cpu (int ,int,int,scalar_t__,int ) ;
 int stub1 (TYPE_5__*,scalar_t__,int ) ;

__attribute__((used)) static void flush_ir_buffer_fill(struct iso_context *ctx)
{
 dma_sync_single_range_for_cpu(ctx->context.ohci->card.device,
          ctx->mc_buffer_bus & PAGE_MASK,
          ctx->mc_buffer_bus & ~PAGE_MASK,
          ctx->mc_completed, DMA_FROM_DEVICE);

 ctx->base.callback.mc(&ctx->base,
         ctx->mc_buffer_bus + ctx->mc_completed,
         ctx->base.callback_data);
 ctx->mc_completed = 0;
}
