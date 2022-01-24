#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct qib_devdata {int msi_data; int flags; TYPE_1__* pcidev; int /*<<< orphan*/  msi_hi; int /*<<< orphan*/  msi_lo; } ;
struct TYPE_5__ {int msi_cap; } ;

/* Variables and functions */
 scalar_t__ PCI_MSI_ADDRESS_HI ; 
 scalar_t__ PCI_MSI_ADDRESS_LO ; 
 int PCI_MSI_FLAGS ; 
 int PCI_MSI_FLAGS_64BIT ; 
 int PCI_MSI_FLAGS_ENABLE ; 
 int QIB_HAS_INTX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*) ; 

int FUNC6(struct qib_devdata *dd)
{
	int pos;
	u16 control;
	int ret = 0;

	/* If we aren't using MSI, don't restore it */
	if (!dd->msi_lo)
		goto bail;

	pos = dd->pcidev->msi_cap;
	if (!pos) {
		FUNC4(dd,
			"Can't find MSI capability, can't restore MSI settings\n");
		ret = 0;
		/* nothing special for MSIx, just MSI */
		goto bail;
	}
	FUNC2(dd->pcidev, pos + PCI_MSI_ADDRESS_LO,
			       dd->msi_lo);
	FUNC2(dd->pcidev, pos + PCI_MSI_ADDRESS_HI,
			       dd->msi_hi);
	FUNC0(dd->pcidev, pos + PCI_MSI_FLAGS, &control);
	if (!(control & PCI_MSI_FLAGS_ENABLE)) {
		control |= PCI_MSI_FLAGS_ENABLE;
		FUNC3(dd->pcidev, pos + PCI_MSI_FLAGS,
				      control);
	}
	/* now rewrite the data (vector) info */
	FUNC3(dd->pcidev, pos +
			      ((control & PCI_MSI_FLAGS_64BIT) ? 12 : 8),
			      dd->msi_data);
	ret = 1;
bail:
	FUNC5(dd);

	if (!ret && (dd->flags & QIB_HAS_INTX))
		ret = 1;

	/* and now set the pci master bit again */
	FUNC1(dd->pcidev);

	return ret;
}