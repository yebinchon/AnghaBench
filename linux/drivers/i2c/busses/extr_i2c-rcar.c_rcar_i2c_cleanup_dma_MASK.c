#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rcar_i2c_priv {scalar_t__ dma_direction; int /*<<< orphan*/  dma_tx; int /*<<< orphan*/  dma_rx; } ;

/* Variables and functions */
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_NONE ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_i2c_priv*) ; 

__attribute__((used)) static void FUNC2(struct rcar_i2c_priv *priv)
{
	if (priv->dma_direction == DMA_NONE)
		return;
	else if (priv->dma_direction == DMA_FROM_DEVICE)
		FUNC0(priv->dma_rx);
	else if (priv->dma_direction == DMA_TO_DEVICE)
		FUNC0(priv->dma_tx);

	FUNC1(priv);
}