
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl330_xfer {size_t bytes; void* src_addr; void* dst_addr; } ;
typedef void* dma_addr_t ;



__attribute__((used)) static inline void fill_px(struct pl330_xfer *px,
  dma_addr_t dst, dma_addr_t src, size_t len)
{
 px->bytes = len;
 px->dst_addr = dst;
 px->src_addr = src;
}
