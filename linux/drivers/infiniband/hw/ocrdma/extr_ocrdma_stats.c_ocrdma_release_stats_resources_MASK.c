#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stats_mem {int /*<<< orphan*/  debugfs_mem; int /*<<< orphan*/ * va; int /*<<< orphan*/  pa; int /*<<< orphan*/  size; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct ocrdma_dev {TYPE_2__ nic_info; struct stats_mem stats_mem; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct ocrdma_dev *dev)
{
	struct stats_mem *mem = &dev->stats_mem;

	if (mem->va)
		FUNC0(&dev->nic_info.pdev->dev, mem->size,
				  mem->va, mem->pa);
	mem->va = NULL;
	FUNC1(mem->debugfs_mem);
}