
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef int ssize_t ;


 int ioat_ring_active (struct ioatdma_chan*) ;
 int sprintf (char*,char*,int) ;
 struct ioatdma_chan* to_ioat_chan (struct dma_chan*) ;

__attribute__((used)) static ssize_t ring_active_show(struct dma_chan *c, char *page)
{
 struct ioatdma_chan *ioat_chan = to_ioat_chan(c);


 return sprintf(page, "%d\n", ioat_ring_active(ioat_chan));
}
