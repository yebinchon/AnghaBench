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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_PRI_DEV_ERRATUM_ENABLE_RESET ; 
 int /*<<< orphan*/  AMD_PRI_DEV_ERRATUM_LIMIT_REQ_ONE ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_dev*,int) ; 
 int FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev)
{
	bool reset_enable;
	int reqs, ret;

	/* FIXME: Hardcode number of outstanding requests for now */
	reqs = 32;
	if (FUNC6(pdev, AMD_PRI_DEV_ERRATUM_LIMIT_REQ_ONE))
		reqs = 1;
	reset_enable = FUNC6(pdev, AMD_PRI_DEV_ERRATUM_ENABLE_RESET);

	/* Only allow access to user-accessible pages */
	ret = FUNC3(pdev, 0);
	if (ret)
		goto out_err;

	/* First reset the PRI state of the device */
	ret = FUNC5(pdev);
	if (ret)
		goto out_err;

	/* Enable PRI */
	ret = FUNC4(pdev, reqs);
	if (ret)
		goto out_err;

	if (reset_enable) {
		ret = FUNC7(pdev);
		if (ret)
			goto out_err;
	}

	ret = FUNC2(pdev, PAGE_SHIFT);
	if (ret)
		goto out_err;

	return 0;

out_err:
	FUNC1(pdev);
	FUNC0(pdev);

	return ret;
}