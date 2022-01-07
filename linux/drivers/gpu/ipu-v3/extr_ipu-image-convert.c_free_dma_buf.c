
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_image_convert_priv {TYPE_1__* ipu; } ;
struct ipu_image_convert_dma_buf {scalar_t__ phys; int * virt; int len; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int ,int ,int *,scalar_t__) ;

__attribute__((used)) static void free_dma_buf(struct ipu_image_convert_priv *priv,
    struct ipu_image_convert_dma_buf *buf)
{
 if (buf->virt)
  dma_free_coherent(priv->ipu->dev,
      buf->len, buf->virt, buf->phys);
 buf->virt = ((void*)0);
 buf->phys = 0;
}
