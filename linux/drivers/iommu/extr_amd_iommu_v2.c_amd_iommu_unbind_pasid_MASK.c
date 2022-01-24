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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;
struct pasid_state {int /*<<< orphan*/  mm; int /*<<< orphan*/  mn; int /*<<< orphan*/  pasid; } ;
struct device_state {int max_pasids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct device_state* FUNC3 (int /*<<< orphan*/ ) ; 
 struct pasid_state* FUNC4 (struct device_state*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct pasid_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct pasid_state*) ; 

void FUNC10(struct pci_dev *pdev, int pasid)
{
	struct pasid_state *pasid_state;
	struct device_state *dev_state;
	u16 devid;

	FUNC5();

	if (!FUNC0())
		return;

	devid = FUNC2(pdev);
	dev_state = FUNC3(devid);
	if (dev_state == NULL)
		return;

	if (pasid < 0 || pasid >= dev_state->max_pasids)
		goto out;

	pasid_state = FUNC4(dev_state, pasid);
	if (pasid_state == NULL)
		goto out;
	/*
	 * Drop reference taken here. We are safe because we still hold
	 * the reference taken in the amd_iommu_bind_pasid function.
	 */
	FUNC8(pasid_state);

	/* Clear the pasid state so that the pasid can be re-used */
	FUNC1(dev_state, pasid_state->pasid);

	/*
	 * Call mmu_notifier_unregister to drop our reference
	 * to pasid_state->mm
	 */
	FUNC6(&pasid_state->mn, pasid_state->mm);

	FUNC9(pasid_state); /* Reference taken in
					      amd_iommu_bind_pasid */
out:
	/* Drop reference taken in this function */
	FUNC7(dev_state);

	/* Drop reference taken in amd_iommu_bind_pasid */
	FUNC7(dev_state);
}