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
struct ib_udata {int dummy; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct efa_dev {TYPE_1__* pdev; int /*<<< orphan*/  ibdev; } ;
struct efa_cq {int /*<<< orphan*/  size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  cq_idx; int /*<<< orphan*/  cpu_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efa_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct efa_cq* FUNC3 (struct ib_cq*) ; 
 struct efa_dev* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct ib_cq *ibcq, struct ib_udata *udata)
{
	struct efa_dev *dev = FUNC4(ibcq->device);
	struct efa_cq *cq = FUNC3(ibcq);

	FUNC2(&dev->ibdev,
		  "Destroy cq[%d] virt[0x%p] freed: size[%lu], dma[%pad]\n",
		  cq->cq_idx, cq->cpu_addr, cq->size, &cq->dma_addr);

	FUNC1(dev, cq->cq_idx);
	FUNC0(&dev->pdev->dev, cq->dma_addr, cq->size,
			 DMA_FROM_DEVICE);
}