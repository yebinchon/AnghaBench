
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_context {int * pages; } ;
typedef int dma_addr_t ;


 int page_private (int ) ;

__attribute__((used)) static inline dma_addr_t ar_buffer_bus(struct ar_context *ctx, unsigned int i)
{
 return page_private(ctx->pages[i]);
}
