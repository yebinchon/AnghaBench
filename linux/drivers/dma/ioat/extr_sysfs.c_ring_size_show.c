
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int alloc_order; } ;
struct dma_chan {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct ioatdma_chan* to_ioat_chan (struct dma_chan*) ;

__attribute__((used)) static ssize_t ring_size_show(struct dma_chan *c, char *page)
{
 struct ioatdma_chan *ioat_chan = to_ioat_chan(c);

 return sprintf(page, "%d\n", (1 << ioat_chan->alloc_order) & ~1);
}
