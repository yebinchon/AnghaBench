
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ioatdma_chan {int dummy; } ;


 scalar_t__ ioat_ring_active (struct ioatdma_chan*) ;
 scalar_t__ ioat_ring_size (struct ioatdma_chan*) ;

__attribute__((used)) static inline u32 ioat_ring_space(struct ioatdma_chan *ioat_chan)
{
 return ioat_ring_size(ioat_chan) - ioat_ring_active(ioat_chan);
}
