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
struct rcar_i2c_priv {void* dma_rx; void* dma_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(struct rcar_i2c_priv *priv)
{
	if (!FUNC1(priv->dma_tx)) {
		FUNC2(priv->dma_tx);
		priv->dma_tx = FUNC0(-EPROBE_DEFER);
	}

	if (!FUNC1(priv->dma_rx)) {
		FUNC2(priv->dma_rx);
		priv->dma_rx = FUNC0(-EPROBE_DEFER);
	}
}