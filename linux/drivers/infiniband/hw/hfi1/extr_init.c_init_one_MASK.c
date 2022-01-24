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
struct pci_device_id {int /*<<< orphan*/  device; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hfi1_pportdata {int /*<<< orphan*/ * link_wq; int /*<<< orphan*/ * hfi1_wq; } ;
struct hfi1_devdata {int num_pports; struct hfi1_pportdata* pport; int /*<<< orphan*/  verbs_dev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HFI1_INITTED ; 
 scalar_t__ FUNC1 (struct hfi1_devdata*) ; 
 int MAX_EAGER_BUFFER_TOTAL ; 
 int MIN_EAGER_BUFFER ; 
 int NUM_IB_PORTS ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL0 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL1 ; 
 int FUNC2 (struct hfi1_devdata*) ; 
 scalar_t__ FUNC3 (scalar_t__,int,int) ; 
 int FUNC4 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ eager_buffer_size ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct hfi1_devdata* FUNC11 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC14 (struct hfi1_devdata*) ; 
 int hfi1_hdrq_entsize ; 
 int FUNC15 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int FUNC18 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC19 (struct hfi1_pportdata*) ; 
 scalar_t__ hfi1_rcvarr_split ; 
 int FUNC20 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC21 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC22 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC23 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  ib_wq ; 
 int FUNC24 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC27 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  rcvhdrcnt ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC30 (struct hfi1_devdata*) ; 

__attribute__((used)) static int FUNC31(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int ret = 0, j, pidx, initfail;
	struct hfi1_devdata *dd;
	struct hfi1_pportdata *ppd;

	/* First, lock the non-writable module parameters */
	FUNC0();

	/* Validate dev ids */
	if (!(ent->device == PCI_DEVICE_ID_INTEL0 ||
	      ent->device == PCI_DEVICE_ID_INTEL1)) {
		FUNC8(&pdev->dev, "Failing on unknown Intel deviceid 0x%x\n",
			ent->device);
		ret = -ENODEV;
		goto bail;
	}

	/* Allocate the dd so we can get to work */
	dd = FUNC11(pdev, NUM_IB_PORTS *
				sizeof(struct hfi1_pportdata));
	if (FUNC1(dd)) {
		ret = FUNC2(dd);
		goto bail;
	}

	/* Validate some global module parameters */
	ret = FUNC24(dd, rcvhdrcnt);
	if (ret)
		goto bail;

	/* use the encoding function as a sanitization check */
	if (!FUNC9(hfi1_hdrq_entsize)) {
		FUNC5(dd, "Invalid HdrQ Entry size %u\n",
			   hfi1_hdrq_entsize);
		ret = -EINVAL;
		goto bail;
	}

	/* The receive eager buffer size must be set before the receive
	 * contexts are created.
	 *
	 * Set the eager buffer size.  Validate that it falls in a range
	 * allowed by the hardware - all powers of 2 between the min and
	 * max.  The maximum valid MTU is within the eager buffer range
	 * so we do not need to cap the max_mtu by an eager buffer size
	 * setting.
	 */
	if (eager_buffer_size) {
		if (!FUNC25(eager_buffer_size))
			eager_buffer_size =
				FUNC28(eager_buffer_size);
		eager_buffer_size =
			FUNC3(eager_buffer_size,
				  MIN_EAGER_BUFFER * 8,
				  MAX_EAGER_BUFFER_TOTAL);
		FUNC6(dd, "Eager buffer size %u\n",
			    eager_buffer_size);
	} else {
		FUNC5(dd, "Invalid Eager buffer size of 0\n");
		ret = -EINVAL;
		goto bail;
	}

	/* restrict value of hfi1_rcvarr_split */
	hfi1_rcvarr_split = FUNC3(hfi1_rcvarr_split, 0, 100);

	ret = FUNC18(dd);
	if (ret)
		goto bail;

	/*
	 * Do device-specific initialization, function table setup, dd
	 * allocation, etc.
	 */
	ret = FUNC16(dd);
	if (ret)
		goto clean_bail; /* error already printed */

	ret = FUNC4(dd);
	if (ret)
		goto clean_bail;

	/* do the generic initialization */
	initfail = FUNC15(dd, 0);

	/* setup vnic */
	FUNC23(dd);

	ret = FUNC20(dd);

	/*
	 * Now ready for use.  this should be cleared whenever we
	 * detect a reset, or initiate one.  If earlier failure,
	 * we still create devices, so diags, etc. can be used
	 * to determine cause of problem.
	 */
	if (!initfail && !ret) {
		dd->flags |= HFI1_INITTED;
		/* create debufs files after init and ib register */
		FUNC12(&dd->verbs_dev);
	}

	j = FUNC13(dd);
	if (j)
		FUNC5(dd, "Failed to create /dev devices: %d\n", -j);

	if (initfail || ret) {
		FUNC26(dd);
		FUNC30(dd);
		FUNC10(ib_wq);
		for (pidx = 0; pidx < dd->num_pports; ++pidx) {
			FUNC19(dd->pport + pidx);
			ppd = dd->pport + pidx;
			if (ppd->hfi1_wq) {
				FUNC7(ppd->hfi1_wq);
				ppd->hfi1_wq = NULL;
			}
			if (ppd->link_wq) {
				FUNC7(ppd->link_wq);
				ppd->link_wq = NULL;
			}
		}
		if (!j)
			FUNC14(dd);
		if (!ret)
			FUNC21(dd);
		FUNC22(dd);
		FUNC27(dd);
		if (initfail)
			ret = initfail;
		goto bail;	/* everything already cleaned */
	}

	FUNC29(dd);

	return 0;

clean_bail:
	FUNC17(pdev);
bail:
	return ret;
}