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
struct fsldma_chan {int dummy; } ;
struct dma_async_tx_descriptor {scalar_t__ cookie; } ;
struct fsl_desc_sw {struct dma_async_tx_descriptor async_tx; } ;
typedef  scalar_t__ dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static dma_cookie_t FUNC4(struct fsldma_chan *chan,
		struct fsl_desc_sw *desc, dma_cookie_t cookie)
{
	struct dma_async_tx_descriptor *txd = &desc->async_tx;
	dma_cookie_t ret = cookie;

	FUNC0(txd->cookie < 0);

	if (txd->cookie > 0) {
		ret = txd->cookie;

		FUNC1(txd);
		/* Run the link descriptor callback function */
		FUNC3(txd, NULL);
	}

	/* Run any dependencies */
	FUNC2(txd);

	return ret;
}