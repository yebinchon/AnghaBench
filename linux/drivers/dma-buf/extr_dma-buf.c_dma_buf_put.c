
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buf {int file; } ;


 scalar_t__ WARN_ON (int) ;
 int fput (int ) ;

void dma_buf_put(struct dma_buf *dmabuf)
{
 if (WARN_ON(!dmabuf || !dmabuf->file))
  return;

 fput(dmabuf->file);
}
