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
typedef  int uint ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mpc_dma {int error_status; TYPE_1__ dma; int /*<<< orphan*/  error_status_lock; } ;

/* Variables and functions */
 int MPC_DMA_DMAES_CPE ; 
 int MPC_DMA_DMAES_DAE ; 
 int MPC_DMA_DMAES_DBE ; 
 int MPC_DMA_DMAES_DOE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MPC_DMA_DMAES_GPE ; 
 int MPC_DMA_DMAES_NCE ; 
 int MPC_DMA_DMAES_SAE ; 
 int MPC_DMA_DMAES_SBE ; 
 int MPC_DMA_DMAES_SGE ; 
 int MPC_DMA_DMAES_SOE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mpc_dma*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct mpc_dma *mdma = (void *)data;
	unsigned long flags;
	uint es;

	FUNC3(&mdma->error_status_lock, flags);
	es = mdma->error_status;
	mdma->error_status = 0;
	FUNC4(&mdma->error_status_lock, flags);

	/* Print nice error report */
	if (es) {
		FUNC1(mdma->dma.dev,
			"Hardware reported following error(s) on channel %u:\n",
						      FUNC0(es));

		if (es & MPC_DMA_DMAES_GPE)
			FUNC1(mdma->dma.dev, "- Group Priority Error\n");
		if (es & MPC_DMA_DMAES_CPE)
			FUNC1(mdma->dma.dev, "- Channel Priority Error\n");
		if (es & MPC_DMA_DMAES_SAE)
			FUNC1(mdma->dma.dev, "- Source Address Error\n");
		if (es & MPC_DMA_DMAES_SOE)
			FUNC1(mdma->dma.dev, "- Source Offset Configuration Error\n");
		if (es & MPC_DMA_DMAES_DAE)
			FUNC1(mdma->dma.dev, "- Destination Address Error\n");
		if (es & MPC_DMA_DMAES_DOE)
			FUNC1(mdma->dma.dev, "- Destination Offset Configuration Error\n");
		if (es & MPC_DMA_DMAES_NCE)
			FUNC1(mdma->dma.dev, "- NBytes/Citter Configuration Error\n");
		if (es & MPC_DMA_DMAES_SGE)
			FUNC1(mdma->dma.dev, "- Scatter/Gather Configuration Error\n");
		if (es & MPC_DMA_DMAES_SBE)
			FUNC1(mdma->dma.dev, "- Source Bus Error\n");
		if (es & MPC_DMA_DMAES_DBE)
			FUNC1(mdma->dma.dev, "- Destination Bus Error\n");
	}

	FUNC2(mdma);
}