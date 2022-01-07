
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ioatdma_chan {int tail; int head; } ;


 int CIRC_CNT (int ,int ,int ) ;
 int ioat_ring_size (struct ioatdma_chan*) ;

__attribute__((used)) static inline u16 ioat_ring_active(struct ioatdma_chan *ioat_chan)
{
 return CIRC_CNT(ioat_chan->head, ioat_chan->tail,
   ioat_ring_size(ioat_chan));
}
