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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct qib_pportdata {int /*<<< orphan*/  lflags_lock; int /*<<< orphan*/  lflags; TYPE_1__* cpspec; } ;
struct qib_devdata {int flags; int control; int revision; int num_pports; struct qib_pportdata* pport; TYPE_2__* cspec; int /*<<< orphan*/  lbus_width; int /*<<< orphan*/ * kregbase; int /*<<< orphan*/  z_int_counter; int /*<<< orphan*/  unit; } ;
struct TYPE_4__ {int num_msix_entries; } ;
struct TYPE_3__ {scalar_t__ ibmalfdelta; scalar_t__ iblnkerrdelta; scalar_t__ ibsymdelta; scalar_t__ ibdeltainprog; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QIBL_IB_AUTONEG_FAILED ; 
 int /*<<< orphan*/  QIBL_IB_FORCE_NOTIFY ; 
 int QIB_7322_MsixTable_OFFS ; 
 int QIB_BADINTR ; 
 int QIB_DOING_RESET ; 
 int QIB_INITTED ; 
 int QIB_PRESENT ; 
 int QLOGIC_IB_C_RESET ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 size_t kr_control ; 
 size_t kr_revision ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_devdata*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct qib_devdata*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct qib_devdata*,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC17 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct qib_devdata *dd)
{
	u64 val;
	u64 *msix_vecsave = NULL;
	int i, msix_entries, ret = 1;
	u16 cmdval;
	u8 int_line, clinesz;
	unsigned long flags;

	/* Use dev_err so it shows up in logs, etc. */
	FUNC5(dd, "Resetting InfiniPath unit %u\n", dd->unit);

	FUNC7(dd, &cmdval, &int_line, &clinesz);

	msix_entries = dd->cspec->num_msix_entries;

	/* no interrupts till re-initted */
	FUNC4(dd, 0);

	FUNC3(dd);

	if (msix_entries) {
		/* can be up to 512 bytes, too big for stack */
		msix_vecsave = FUNC1(2 * dd->cspec->num_msix_entries,
					     sizeof(u64),
					     GFP_KERNEL);
	}

	/*
	 * Core PCI (as of 2.6.18) doesn't save or rewrite the full vector
	 * info that is set up by the BIOS, so we have to save and restore
	 * it ourselves.   There is some risk something could change it,
	 * after we save it, but since we have disabled the MSIx, it
	 * shouldn't be touched...
	 */
	for (i = 0; i < msix_entries; i++) {
		u64 vecaddr, vecdata;

		vecaddr = FUNC10(dd, 2 * i +
				  (QIB_7322_MsixTable_OFFS / sizeof(u64)));
		vecdata = FUNC10(dd, 1 + 2 * i +
				  (QIB_7322_MsixTable_OFFS / sizeof(u64)));
		if (msix_vecsave) {
			msix_vecsave[2 * i] = vecaddr;
			/* save it without the masked bit set */
			msix_vecsave[1 + 2 * i] = vecdata & ~0x100000000ULL;
		}
	}

	dd->pport->cpspec->ibdeltainprog = 0;
	dd->pport->cpspec->ibsymdelta = 0;
	dd->pport->cpspec->iblnkerrdelta = 0;
	dd->pport->cpspec->ibmalfdelta = 0;
	/* so we check interrupts work again */
	dd->z_int_counter = FUNC6(dd);

	/*
	 * Keep chip from being accessed until we are ready.  Use
	 * writeq() directly, to allow the write even though QIB_PRESENT
	 * isn't set.
	 */
	dd->flags &= ~(QIB_INITTED | QIB_PRESENT | QIB_BADINTR);
	dd->flags |= QIB_DOING_RESET;
	val = dd->control | QLOGIC_IB_C_RESET;
	FUNC18(val, &dd->kregbase[kr_control]);

	for (i = 1; i <= 5; i++) {
		/*
		 * Allow MBIST, etc. to complete; longer on each retry.
		 * We sometimes get machine checks from bus timeout if no
		 * response, so for now, make it *really* long.
		 */
		FUNC2(1000 + (1 + i) * 3000);

		FUNC9(dd, cmdval, int_line, clinesz);

		/*
		 * Use readq directly, so we don't need to mark it as PRESENT
		 * until we get a successful indication that all is well.
		 */
		val = FUNC13(&dd->kregbase[kr_revision]);
		if (val == dd->revision)
			break;
		if (i == 5) {
			FUNC5(dd,
				"Failed to initialize after reset, unusable\n");
			ret = 0;
			goto  bail;
		}
	}

	dd->flags |= QIB_PRESENT; /* it's back */

	if (msix_entries) {
		/* restore the MSIx vector address and data if saved above */
		for (i = 0; i < msix_entries; i++) {
			if (!msix_vecsave || !msix_vecsave[2 * i])
				continue;
			FUNC12(dd, 2 * i +
				(QIB_7322_MsixTable_OFFS / sizeof(u64)),
				msix_vecsave[2 * i]);
			FUNC12(dd, 1 + 2 * i +
				(QIB_7322_MsixTable_OFFS / sizeof(u64)),
				msix_vecsave[1 + 2 * i]);
		}
	}

	/* initialize the remaining registers.  */
	for (i = 0; i < dd->num_pports; ++i)
		FUNC16(&dd->pport[i]);
	FUNC17(dd);

	if (FUNC8(dd, dd->lbus_width, &msix_entries))
		FUNC5(dd,
			"Reset failed to setup PCIe or interrupts; continuing anyway\n");

	dd->cspec->num_msix_entries = msix_entries;
	FUNC11(dd, 1);

	for (i = 0; i < dd->num_pports; ++i) {
		struct qib_pportdata *ppd = &dd->pport[i];

		FUNC14(&ppd->lflags_lock, flags);
		ppd->lflags |= QIBL_IB_FORCE_NOTIFY;
		ppd->lflags &= ~QIBL_IB_AUTONEG_FAILED;
		FUNC15(&ppd->lflags_lock, flags);
	}

bail:
	dd->flags &= ~QIB_DOING_RESET; /* OK or not, no longer resetting */
	FUNC0(msix_vecsave);
	return ret;
}