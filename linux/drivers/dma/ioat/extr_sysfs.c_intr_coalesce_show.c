
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int intr_coalesce; } ;
struct dma_chan {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct ioatdma_chan* to_ioat_chan (struct dma_chan*) ;

__attribute__((used)) static ssize_t intr_coalesce_show(struct dma_chan *c, char *page)
{
 struct ioatdma_chan *ioat_chan = to_ioat_chan(c);

 return sprintf(page, "%d\n", ioat_chan->intr_coalesce);
}
