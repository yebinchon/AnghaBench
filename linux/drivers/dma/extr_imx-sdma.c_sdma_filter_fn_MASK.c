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
struct imx_dma_data {int dummy; } ;
struct sdma_channel {struct imx_dma_data data; } ;
struct dma_chan {struct imx_dma_data* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 struct sdma_channel* FUNC1 (struct dma_chan*) ; 

__attribute__((used)) static bool FUNC2(struct dma_chan *chan, void *fn_param)
{
	struct sdma_channel *sdmac = FUNC1(chan);
	struct imx_dma_data *data = fn_param;

	if (!FUNC0(chan))
		return false;

	sdmac->data = *data;
	chan->private = &sdmac->data;

	return true;
}