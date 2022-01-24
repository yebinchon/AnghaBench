#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct qib_devdata {int lbus_width; int lbus_speed; int flags; int /*<<< orphan*/  lbus_info; TYPE_1__* pcidev; } ;
struct TYPE_4__ {int /*<<< orphan*/  msi_cap; scalar_t__ msi_enabled; int /*<<< orphan*/  msix_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_LNKSTA ; 
 unsigned int PCI_IRQ_LEGACY ; 
 unsigned int PCI_IRQ_MSI ; 
 unsigned int PCI_IRQ_MSIX ; 
 int QIB_HAS_INTX ; 
 int FUNC0 (TYPE_1__*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int,int) ; 

int FUNC8(struct qib_devdata *dd, u32 minw, u32 *nent)
{
	u16 linkstat, speed;
	int nvec;
	int maxvec;
	unsigned int flags = PCI_IRQ_MSIX | PCI_IRQ_MSI;

	if (!FUNC1(dd->pcidev)) {
		FUNC4(dd, "Can't find PCI Express capability!\n");
		/* set up something... */
		dd->lbus_width = 1;
		dd->lbus_speed = 2500; /* Gen1, 2.5GHz */
		nvec = -1;
		goto bail;
	}

	if (dd->flags & QIB_HAS_INTX)
		flags |= PCI_IRQ_LEGACY;
	maxvec = (nent && *nent) ? *nent : 1;
	nvec = FUNC0(dd->pcidev, 1, maxvec, flags);
	if (nvec < 0)
		goto bail;

	/*
	 * If nent exists, make sure to record how many vectors were allocated.
	 * If msix_enabled is false, return 0 so the fallback code works
	 * correctly.
	 */
	if (nent)
		*nent = !dd->pcidev->msix_enabled ? 0 : nvec;

	if (dd->pcidev->msi_enabled)
		FUNC3(dd, dd->pcidev->msi_cap);

	FUNC2(dd->pcidev, PCI_EXP_LNKSTA, &linkstat);
	/*
	 * speed is bits 0-3, linkwidth is bits 4-8
	 * no defines for them in headers
	 */
	speed = linkstat & 0xf;
	linkstat >>= 4;
	linkstat &= 0x1f;
	dd->lbus_width = linkstat;

	switch (speed) {
	case 1:
		dd->lbus_speed = 2500; /* Gen1, 2.5GHz */
		break;
	case 2:
		dd->lbus_speed = 5000; /* Gen1, 5GHz */
		break;
	default: /* not defined, assume gen1 */
		dd->lbus_speed = 2500;
		break;
	}

	/*
	 * Check against expected pcie width and complain if "wrong"
	 * on first initialization, not afterwards (i.e., reset).
	 */
	if (minw && linkstat < minw)
		FUNC4(dd,
			    "PCIe width %u (x%u HCA), performance reduced\n",
			    linkstat, minw);

	FUNC5(dd);

	FUNC6(dd);

bail:
	/* fill in string, even on errors */
	FUNC7(dd->lbus_info, sizeof(dd->lbus_info),
		 "PCIe,%uMHz,x%u\n", dd->lbus_speed, dd->lbus_width);
	return nvec < 0 ? nvec : 0;
}