
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_device {struct ioatdma_chan** idx; } ;
struct ioatdma_chan {int dummy; } ;



__attribute__((used)) static inline struct ioatdma_chan *
ioat_chan_by_index(struct ioatdma_device *ioat_dma, int index)
{
 return ioat_dma->idx[index];
}
