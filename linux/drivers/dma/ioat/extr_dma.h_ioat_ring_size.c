
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ioatdma_chan {int alloc_order; } ;



__attribute__((used)) static inline u32 ioat_ring_size(struct ioatdma_chan *ioat_chan)
{
 return 1 << ioat_chan->alloc_order;
}
