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
struct hfi1_devdata {struct pci_dev* pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 

int FUNC9(struct hfi1_devdata *dd)
{
	int ret;
	struct pci_dev *pdev = dd->pcidev;

	ret = FUNC3(pdev);
	if (ret) {
		/*
		 * This can happen (in theory) iff:
		 * We did a chip reset, and then failed to reprogram the
		 * BAR, or the chip reset due to an internal error.  We then
		 * unloaded the driver and reloaded it.
		 *
		 * Both reset cases set the BAR back to initial state.  For
		 * the latter case, the AER sticky error bit at offset 0x718
		 * should be set, but the Linux kernel doesn't yet know
		 * about that, it appears.  If the original BAR was retained
		 * in the kernel data structures, this may be OK.
		 */
		FUNC1(dd, "pci enable failed: error %d\n", -ret);
		return ret;
	}

	ret = FUNC5(pdev, DRIVER_NAME);
	if (ret) {
		FUNC1(dd, "pci_request_regions fails: err %d\n", -ret);
		goto bail;
	}

	ret = FUNC7(pdev, FUNC0(64));
	if (ret) {
		/*
		 * If the 64 bit setup fails, try 32 bit.  Some systems
		 * do not setup 64 bit maps on systems with 2GB or less
		 * memory installed.
		 */
		ret = FUNC7(pdev, FUNC0(32));
		if (ret) {
			FUNC1(dd, "Unable to set DMA mask: %d\n", ret);
			goto bail;
		}
		ret = FUNC6(pdev, FUNC0(32));
	} else {
		ret = FUNC6(pdev, FUNC0(64));
	}
	if (ret) {
		FUNC1(dd, "Unable to set DMA consistent mask: %d\n", ret);
		goto bail;
	}

	FUNC8(pdev);
	(void)FUNC4(pdev);
	return 0;

bail:
	FUNC2(pdev);
	return ret;
}