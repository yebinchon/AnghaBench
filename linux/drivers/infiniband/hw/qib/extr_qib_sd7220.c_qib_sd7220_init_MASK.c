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
struct qib_devdata {TYPE_2__* cspec; int /*<<< orphan*/  pport; TYPE_1__* pcidev; } ;
struct firmware {int dummy; } ;
struct TYPE_4__ {int serdes_first_init_done; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD7220_FW_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kr_ibserdesctrl ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct firmware const*) ; 
 int FUNC5 (struct qib_devdata*) ; 
 int FUNC6 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qib_devdata*,struct firmware const*) ; 
 int FUNC8 (struct qib_devdata*,struct firmware const*) ; 
 int FUNC9 (struct qib_devdata*) ; 
 int FUNC10 (struct qib_devdata*) ; 
 scalar_t__ FUNC11 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC12 (struct qib_devdata*,char*) ; 
 int FUNC13 (struct qib_devdata*) ; 
 int FUNC14 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct firmware const*) ; 
 int FUNC16 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct qib_devdata*,int) ; 

int FUNC18(struct qib_devdata *dd)
{
	const struct firmware *fw;
	int ret = 1; /* default to failure */
	int first_reset, was_reset;

	/* SERDES MPU reset recorded in D0 */
	was_reset = (FUNC6(dd, kr_ibserdesctrl) & 1);
	if (!was_reset) {
		/* entered with reset not asserted, we need to do it */
		FUNC3(dd, 1);
		FUNC12(dd, "Driver-reload");
	}

	ret = FUNC16(&fw, SD7220_FW_NAME, &dd->pcidev->dev);
	if (ret) {
		FUNC2(dd, "Failed to load IB SERDES image\n");
		goto done;
	}

	/* Substitute our deduced value for was_reset */
	ret = FUNC4(dd->pport, fw);
	if (ret < 0)
		goto bail;

	first_reset = !ret; /* First reset if IBSD uCode not yet loaded */
	/*
	 * Alter some regs per vendor latest doc, reset-defaults
	 * are not right for IB.
	 */
	ret = FUNC10(dd);
	if (ret < 0) {
		FUNC2(dd, "Failed to set IB SERDES early defaults\n");
		goto bail;
	}
	/*
	 * Set DAC manual trim IB.
	 * We only do this once after chip has been reset (usually
	 * same as once per system boot).
	 */
	if (first_reset) {
		ret = FUNC9(dd);
		if (ret < 0) {
			FUNC2(dd, "Failed IB SERDES DAC trim\n");
			goto bail;
		}
	}
	/*
	 * Set various registers (DDS and RXEQ) that will be
	 * controlled by IBC (in 1.2 mode) to reasonable preset values
	 * Calling the "internal" version avoids the "check for needed"
	 * and "trimdone monitor" that might be counter-productive.
	 */
	ret = FUNC5(dd);
	if (ret < 0) {
		FUNC2(dd, "Failed to set IB SERDES presets\n");
		goto bail;
	}
	ret = FUNC14(dd, 0x80);
	if (ret < 0) {
		FUNC2(dd, "Failed to set IB SERDES TRIMSELF\n");
		goto bail;
	}

	/* Load image, then try to verify */
	ret = 0;        /* Assume success */
	if (first_reset) {
		int vfy;
		int trim_done;

		ret = FUNC7(dd, fw);
		if (ret < 0) {
			FUNC2(dd, "Failed to load IB SERDES image\n");
			goto bail;
		} else {
			/* Loaded image, try to verify */
			vfy = FUNC8(dd, fw);
			if (vfy != ret) {
				FUNC2(dd, "SERDES PRAM VFY failed\n");
				goto bail;
			} /* end if verified */
		} /* end if loaded */

		/*
		 * Loaded and verified. Almost good...
		 * hold "success" in ret
		 */
		ret = 0;
		/*
		 * Prev steps all worked, continue bringup
		 * De-assert RESET to uC, only in first reset, to allow
		 * trimming.
		 *
		 * Since our default setup sets START_EQ1 to
		 * PRESET, we need to clear that for this very first run.
		 */
		ret = FUNC1(dd, FUNC0(0), 0, 0x38);
		if (ret < 0) {
			FUNC2(dd, "Failed clearing START_EQ1\n");
			goto bail;
		}

		FUNC3(dd, 0);
		/*
		 * If this is not the first reset, trimdone should be set
		 * already. We may need to check about this.
		 */
		trim_done = FUNC13(dd);
		/*
		 * Whether or not trimdone succeeded, we need to put the
		 * uC back into reset to avoid a possible fight with the
		 * IBC state-machine.
		 */
		FUNC3(dd, 1);

		if (!trim_done) {
			FUNC2(dd, "No TRIMDONE seen\n");
			goto bail;
		}
		/*
		 * DEBUG: check each time we reset if trimdone bits have
		 * gotten cleared, and re-set them.
		 */
		FUNC12(dd, "First-reset");
		/* Remember so we do not re-do the load, dactrim, etc. */
		dd->cspec->serdes_first_init_done = 1;
	}
	/*
	 * setup for channel training and load values for
	 * RxEq and DDS in tables used by IBC in IB1.2 mode
	 */
	ret = 0;
	if (FUNC11(dd) >= 0)
		goto done;
bail:
	ret = 1;
done:
	/* start relock timer regardless, but start at 1 second */
	FUNC17(dd, -1);

	FUNC15(fw);
	return ret;
}