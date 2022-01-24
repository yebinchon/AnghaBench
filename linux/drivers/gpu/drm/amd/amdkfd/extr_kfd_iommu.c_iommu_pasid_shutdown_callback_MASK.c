#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct kfd_process_device {int dummy; } ;
struct kfd_process {scalar_t__ pasid; int /*<<< orphan*/  mutex; } ;
struct kfd_dev {TYPE_1__* dbgmgr; } ;
struct TYPE_3__ {scalar_t__ pasid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct kfd_process*) ; 
 struct kfd_dev* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 struct kfd_process_device* FUNC4 (struct kfd_dev*,struct kfd_process*) ; 
 struct kfd_process* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct kfd_process_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev, int pasid)
{
	struct kfd_dev *dev = FUNC2(pdev);
	struct kfd_process *p;
	struct kfd_process_device *pdd;

	if (!dev)
		return;

	/*
	 * Look for the process that matches the pasid. If there is no such
	 * process, we either released it in amdkfd's own notifier, or there
	 * is a bug. Unfortunately, there is no way to tell...
	 */
	p = FUNC5(pasid);
	if (!p)
		return;

	FUNC10("Unbinding process %d from IOMMU\n", pasid);

	FUNC8(FUNC3());

	if (dev->dbgmgr && dev->dbgmgr->pasid == p->pasid) {
		if (!FUNC1(dev->dbgmgr, p)) {
			FUNC0(dev->dbgmgr);
			dev->dbgmgr = NULL;
		}
	}

	FUNC9(FUNC3());

	FUNC8(&p->mutex);

	pdd = FUNC4(dev, p);
	if (pdd)
		/* For GPU relying on IOMMU, we need to dequeue here
		 * when PASID is still bound.
		 */
		FUNC6(pdd);

	FUNC9(&p->mutex);

	FUNC7(p);
}