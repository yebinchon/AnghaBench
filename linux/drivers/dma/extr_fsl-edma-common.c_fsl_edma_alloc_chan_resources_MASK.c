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
struct fsl_edma_hw_tcd {int dummy; } ;
struct fsl_edma_chan {int /*<<< orphan*/  tcd_pool; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct fsl_edma_chan* FUNC1 (struct dma_chan*) ; 

int FUNC2(struct dma_chan *chan)
{
	struct fsl_edma_chan *fsl_chan = FUNC1(chan);

	fsl_chan->tcd_pool = FUNC0("tcd_pool", chan->device->dev,
				sizeof(struct fsl_edma_hw_tcd),
				32, 0);
	return 0;
}