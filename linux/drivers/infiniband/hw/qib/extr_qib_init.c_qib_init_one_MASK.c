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
struct qib_devdata {int num_pports; scalar_t__ pport; int /*<<< orphan*/  (* f_quiet_serdes ) (scalar_t__) ;int /*<<< orphan*/  flags; } ;
struct pci_device_id {int device; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 struct qib_devdata* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct qib_devdata*) ; 
#define  PCI_DEVICE_ID_QLOGIC_IB_6120 130 
#define  PCI_DEVICE_ID_QLOGIC_IB_7220 129 
#define  PCI_DEVICE_ID_QLOGIC_IB_7322 128 
 int FUNC2 (struct qib_devdata*) ; 
 int /*<<< orphan*/  QIB_INITTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_wq ; 
 int FUNC4 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*,char*,int) ; 
 int FUNC6 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC9 (struct qib_devdata*) ; 
 int FUNC10 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 struct qib_devdata* FUNC11 (struct pci_dev*,struct pci_device_id const*) ; 
 struct qib_devdata* FUNC12 (struct pci_dev*,struct pci_device_id const*) ; 
 struct qib_devdata* FUNC13 (struct pci_dev*,struct pci_device_id const*) ; 
 scalar_t__ qib_mini_init ; 
 int FUNC14 (struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC15 (struct qib_devdata*) ; 
 int FUNC16 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC17 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC18 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC19 (struct qib_devdata*) ; 
 int FUNC20 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC21 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 

__attribute__((used)) static int FUNC23(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int ret, j, pidx, initfail;
	struct qib_devdata *dd = NULL;

	ret = FUNC14(pdev, ent);
	if (ret)
		goto bail;

	/*
	 * Do device-specific initialiation, function table setup, dd
	 * allocation, etc.
	 */
	switch (ent->device) {
	case PCI_DEVICE_ID_QLOGIC_IB_6120:
#ifdef CONFIG_PCI_MSI
		dd = qib_init_iba6120_funcs(pdev, ent);
#else
		FUNC8(&pdev->dev,
			"Intel PCIE device 0x%x cannot work if CONFIG_PCI_MSI is not enabled\n",
			ent->device);
		dd = FUNC0(-ENODEV);
#endif
		break;

	case PCI_DEVICE_ID_QLOGIC_IB_7220:
		dd = FUNC12(pdev, ent);
		break;

	case PCI_DEVICE_ID_QLOGIC_IB_7322:
		dd = FUNC13(pdev, ent);
		break;

	default:
		FUNC8(&pdev->dev,
			"Failing on unknown Intel deviceid 0x%x\n",
			ent->device);
		ret = -ENODEV;
	}

	if (FUNC1(dd))
		ret = FUNC2(dd);
	if (ret)
		goto bail; /* error already printed */

	ret = FUNC4(dd);
	if (ret)
		goto bail;

	/* do the generic initialization */
	initfail = FUNC10(dd, 0);

	ret = FUNC16(dd);

	/*
	 * Now ready for use.  this should be cleared whenever we
	 * detect a reset, or initiate one.  If earlier failure,
	 * we still create devices, so diags, etc. can be used
	 * to determine cause of problem.
	 */
	if (!qib_mini_init && !initfail && !ret)
		dd->flags |= QIB_INITTED;

	j = FUNC6(dd);
	if (j)
		FUNC5(dd, "Failed to create /dev devices: %d\n", -j);
	j = FUNC20(dd);
	if (j)
		FUNC5(dd, "Failed filesystem setup for counters: %d\n",
			    -j);

	if (qib_mini_init || initfail || ret) {
		FUNC17(dd);
		FUNC3(ib_wq);
		for (pidx = 0; pidx < dd->num_pports; ++pidx)
			dd->f_quiet_serdes(dd->pport + pidx);
		if (qib_mini_init)
			goto bail;
		if (!j) {
			(void) FUNC21(dd);
			FUNC7(dd);
		}
		if (!ret)
			FUNC18(dd);
		FUNC15(dd);
		if (initfail)
			ret = initfail;
		goto bail;
	}

	ret = FUNC9(dd);
	if (ret) {
		FUNC5(dd,
			"Write combining not enabled (err %d): performance may be poor\n",
			-ret);
		ret = 0;
	}

	FUNC19(dd);
bail:
	return ret;
}