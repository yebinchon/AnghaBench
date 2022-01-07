
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_image_convert_priv {TYPE_1__* ipu; } ;
struct ipu_image_convert_dma_buf {int virt; int phys; int len; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int PAGE_ALIGN (int) ;
 int dev_err (int ,char*) ;
 int dma_alloc_coherent (int ,int ,int *,int) ;

__attribute__((used)) static int alloc_dma_buf(struct ipu_image_convert_priv *priv,
    struct ipu_image_convert_dma_buf *buf,
    int size)
{
 buf->len = PAGE_ALIGN(size);
 buf->virt = dma_alloc_coherent(priv->ipu->dev, buf->len, &buf->phys,
           GFP_DMA | GFP_KERNEL);
 if (!buf->virt) {
  dev_err(priv->ipu->dev, "failed to alloc dma buffer\n");
  return -ENOMEM;
 }

 return 0;
}
