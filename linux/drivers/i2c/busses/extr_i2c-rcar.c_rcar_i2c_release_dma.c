
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {void* dma_rx; void* dma_tx; } ;


 int EPROBE_DEFER ;
 void* ERR_PTR (int ) ;
 int IS_ERR (void*) ;
 int dma_release_channel (void*) ;

__attribute__((used)) static void rcar_i2c_release_dma(struct rcar_i2c_priv *priv)
{
 if (!IS_ERR(priv->dma_tx)) {
  dma_release_channel(priv->dma_tx);
  priv->dma_tx = ERR_PTR(-EPROBE_DEFER);
 }

 if (!IS_ERR(priv->dma_rx)) {
  dma_release_channel(priv->dma_rx);
  priv->dma_rx = ERR_PTR(-EPROBE_DEFER);
 }
}
