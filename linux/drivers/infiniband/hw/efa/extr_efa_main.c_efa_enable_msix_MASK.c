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
struct efa_dev {TYPE_1__* pdev; int /*<<< orphan*/  admin_msix_vector_idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_MGMNT_MSIX_VEC_IDX ; 
 int EFA_NUM_MSIX_VEC ; 
 int ENOSPC ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC2 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct efa_dev *dev)
{
	int msix_vecs, irq_num;

	/* Reserve the max msix vectors we might need */
	msix_vecs = EFA_NUM_MSIX_VEC;
	FUNC0(&dev->pdev->dev, "Trying to enable MSI-X, vectors %d\n",
		msix_vecs);

	dev->admin_msix_vector_idx = EFA_MGMNT_MSIX_VEC_IDX;
	irq_num = FUNC2(dev->pdev, msix_vecs,
					msix_vecs, PCI_IRQ_MSIX);

	if (irq_num < 0) {
		FUNC1(&dev->pdev->dev, "Failed to enable MSI-X. irq_num %d\n",
			irq_num);
		return -ENOSPC;
	}

	if (irq_num != msix_vecs) {
		FUNC1(&dev->pdev->dev,
			"Allocated %d MSI-X (out of %d requested)\n",
			irq_num, msix_vecs);
		return -ENOSPC;
	}

	return 0;
}