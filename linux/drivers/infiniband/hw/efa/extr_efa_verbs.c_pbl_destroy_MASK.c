#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dma_addr; } ;
struct TYPE_6__ {TYPE_2__ continuous; } ;
struct pbl_context {int /*<<< orphan*/  pbl_buf; int /*<<< orphan*/  pbl_buf_size_in_bytes; TYPE_3__ phys; scalar_t__ physically_continuous; } ;
struct efa_dev {TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efa_dev*,struct pbl_context*) ; 

__attribute__((used)) static void FUNC3(struct efa_dev *dev, struct pbl_context *pbl)
{
	if (pbl->physically_continuous)
		FUNC0(&dev->pdev->dev, pbl->phys.continuous.dma_addr,
				 pbl->pbl_buf_size_in_bytes, DMA_TO_DEVICE);
	else
		FUNC2(dev, pbl);

	FUNC1(pbl->pbl_buf);
}