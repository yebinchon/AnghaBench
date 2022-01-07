
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ioatdma_chan {struct ioat_ring_ent** ring; } ;
struct ioat_ring_ent {int dummy; } ;


 int ioat_ring_size (struct ioatdma_chan*) ;

__attribute__((used)) static inline struct ioat_ring_ent *
ioat_get_ring_ent(struct ioatdma_chan *ioat_chan, u16 idx)
{
 return ioat_chan->ring[idx & (ioat_ring_size(ioat_chan) - 1)];
}
