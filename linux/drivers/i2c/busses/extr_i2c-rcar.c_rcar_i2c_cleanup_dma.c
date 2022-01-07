
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {scalar_t__ dma_direction; int dma_tx; int dma_rx; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_NONE ;
 scalar_t__ DMA_TO_DEVICE ;
 int dmaengine_terminate_all (int ) ;
 int rcar_i2c_dma_unmap (struct rcar_i2c_priv*) ;

__attribute__((used)) static void rcar_i2c_cleanup_dma(struct rcar_i2c_priv *priv)
{
 if (priv->dma_direction == DMA_NONE)
  return;
 else if (priv->dma_direction == DMA_FROM_DEVICE)
  dmaengine_terminate_all(priv->dma_rx);
 else if (priv->dma_direction == DMA_TO_DEVICE)
  dmaengine_terminate_all(priv->dma_tx);

 rcar_i2c_dma_unmap(priv);
}
