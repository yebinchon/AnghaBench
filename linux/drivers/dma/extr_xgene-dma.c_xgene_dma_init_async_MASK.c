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
struct xgene_dma {TYPE_1__* chan; int /*<<< orphan*/ * dma_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 int XGENE_DMA_MAX_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct xgene_dma*,int) ; 

__attribute__((used)) static int FUNC3(struct xgene_dma *pdma)
{
	int ret, i, j;

	for (i = 0; i < XGENE_DMA_MAX_CHANNEL ; i++) {
		ret = FUNC2(pdma, i);
		if (ret) {
			for (j = 0; j < i; j++) {
				FUNC0(&pdma->dma_dev[j]);
				FUNC1(&pdma->chan[j].tasklet);
			}

			return ret;
		}
	}

	return ret;
}