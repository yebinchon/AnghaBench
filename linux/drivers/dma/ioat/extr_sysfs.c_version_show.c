
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_device {int version; } ;
struct dma_device {int dummy; } ;
struct dma_chan {struct dma_device* device; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int) ;
 struct ioatdma_device* to_ioatdma_device (struct dma_device*) ;

__attribute__((used)) static ssize_t version_show(struct dma_chan *c, char *page)
{
 struct dma_device *dma = c->device;
 struct ioatdma_device *ioat_dma = to_ioatdma_device(dma);

 return sprintf(page, "%d.%d\n",
         ioat_dma->version >> 4, ioat_dma->version & 0xf);
}
