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
typedef  int u32 ;
struct sa11x0_dma_phy {scalar_t__ base; int /*<<< orphan*/  dcsr; int /*<<< orphan*/ * dbt; int /*<<< orphan*/ * dbs; struct sa11x0_dma_desc* txd_load; struct sa11x0_dma_desc* txd_done; } ;
struct sa11x0_dma_dev {struct sa11x0_dma_phy* phy; } ;
struct sa11x0_dma_desc {int /*<<< orphan*/  ddar; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DCSR_BIU ; 
 int DCSR_RUN ; 
 int DCSR_STRTA ; 
 int DCSR_STRTB ; 
 scalar_t__ DMA_DBSA ; 
 scalar_t__ DMA_DBSB ; 
 scalar_t__ DMA_DBTA ; 
 scalar_t__ DMA_DBTB ; 
 scalar_t__ DMA_DCSR_R ; 
 scalar_t__ DMA_DCSR_S ; 
 scalar_t__ DMA_DDAR ; 
 unsigned int NR_PHY_CHAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sa11x0_dma_dev* FUNC1 (struct device*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct sa11x0_dma_dev *d = FUNC1(dev);
	unsigned pch;

	for (pch = 0; pch < NR_PHY_CHAN; pch++) {
		struct sa11x0_dma_phy *p = &d->phy[pch];
		struct sa11x0_dma_desc *txd = NULL;
		u32 dcsr = FUNC2(p->base + DMA_DCSR_R);

		FUNC0(dcsr & (DCSR_BIU | DCSR_STRTA | DCSR_STRTB | DCSR_RUN));

		if (p->txd_done)
			txd = p->txd_done;
		else if (p->txd_load)
			txd = p->txd_load;

		if (!txd)
			continue;

		FUNC3(txd->ddar, p->base + DMA_DDAR);

		FUNC3(p->dbs[0], p->base + DMA_DBSA);
		FUNC3(p->dbt[0], p->base + DMA_DBTA);
		FUNC3(p->dbs[1], p->base + DMA_DBSB);
		FUNC3(p->dbt[1], p->base + DMA_DBTB);
		FUNC3(p->dcsr, p->base + DMA_DCSR_S);
	}

	return 0;
}