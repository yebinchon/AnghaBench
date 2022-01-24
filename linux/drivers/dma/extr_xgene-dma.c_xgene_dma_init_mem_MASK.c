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
struct xgene_dma {int /*<<< orphan*/  dev; scalar_t__ csr_dma; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ XGENE_DMA_BLK_MEM_RDY ; 
 scalar_t__ XGENE_DMA_BLK_MEM_RDY_VAL ; 
 scalar_t__ XGENE_DMA_MEM_RAM_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (struct xgene_dma*) ; 

__attribute__((used)) static int FUNC5(struct xgene_dma *pdma)
{
	int ret;

	ret = FUNC4(pdma);
	if (ret)
		return ret;

	/* Bring up memory */
	FUNC2(0x0, pdma->csr_dma + XGENE_DMA_MEM_RAM_SHUTDOWN);

	/* Force a barrier */
	FUNC1(pdma->csr_dma + XGENE_DMA_MEM_RAM_SHUTDOWN);

	/* reset may take up to 1ms */
	FUNC3(1000, 1100);

	if (FUNC1(pdma->csr_dma + XGENE_DMA_BLK_MEM_RDY)
		!= XGENE_DMA_BLK_MEM_RDY_VAL) {
		FUNC0(pdma->dev,
			"Failed to release DMA memory from shutdown\n");
		return -ENODEV;
	}

	return 0;
}