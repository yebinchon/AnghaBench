#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rcar_i2c_priv {scalar_t__ dma_direction; scalar_t__ devtype; int /*<<< orphan*/  flags; int /*<<< orphan*/  sg; struct dma_chan* dma_tx; struct dma_chan* dma_rx; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_NONE ; 
 scalar_t__ I2C_RCAR_GEN3 ; 
 int /*<<< orphan*/  ICDMAER ; 
 int /*<<< orphan*/  ID_P_NO_RXDMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_i2c_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rcar_i2c_priv *priv)
{
	struct dma_chan *chan = priv->dma_direction == DMA_FROM_DEVICE
		? priv->dma_rx : priv->dma_tx;

	FUNC0(chan->device->dev, FUNC2(&priv->sg),
			 FUNC3(&priv->sg), priv->dma_direction);

	/* Gen3 can only do one RXDMA per transfer and we just completed it */
	if (priv->devtype == I2C_RCAR_GEN3 &&
	    priv->dma_direction == DMA_FROM_DEVICE)
		priv->flags |= ID_P_NO_RXDMA;

	priv->dma_direction = DMA_NONE;

	/* Disable DMA Master Received/Transmitted, must be last! */
	FUNC1(priv, ICDMAER, 0);
}