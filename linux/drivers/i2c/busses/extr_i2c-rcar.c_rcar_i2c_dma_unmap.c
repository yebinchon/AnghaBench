
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_i2c_priv {scalar_t__ dma_direction; scalar_t__ devtype; int flags; int sg; struct dma_chan* dma_tx; struct dma_chan* dma_rx; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_NONE ;
 scalar_t__ I2C_RCAR_GEN3 ;
 int ICDMAER ;
 int ID_P_NO_RXDMA ;
 int dma_unmap_single (int ,int ,int ,scalar_t__) ;
 int rcar_i2c_write (struct rcar_i2c_priv*,int ,int ) ;
 int sg_dma_address (int *) ;
 int sg_dma_len (int *) ;

__attribute__((used)) static void rcar_i2c_dma_unmap(struct rcar_i2c_priv *priv)
{
 struct dma_chan *chan = priv->dma_direction == DMA_FROM_DEVICE
  ? priv->dma_rx : priv->dma_tx;

 dma_unmap_single(chan->device->dev, sg_dma_address(&priv->sg),
    sg_dma_len(&priv->sg), priv->dma_direction);


 if (priv->devtype == I2C_RCAR_GEN3 &&
     priv->dma_direction == DMA_FROM_DEVICE)
  priv->flags |= ID_P_NO_RXDMA;

 priv->dma_direction = DMA_NONE;


 rcar_i2c_write(priv, ICDMAER, 0);
}
