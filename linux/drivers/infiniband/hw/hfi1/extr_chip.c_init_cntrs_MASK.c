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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct hfi1_pportdata {void* scntrs; void* cntrs; } ;
struct hfi1_devdata {size_t cntrnameslen; char* cntrnames; int num_rcv_contexts; size_t portcntrnameslen; char* portcntrnames; int num_pports; int /*<<< orphan*/  synth_stats_timer; int /*<<< orphan*/  update_cntr_work; int /*<<< orphan*/  update_cntr_wq; int /*<<< orphan*/  unit; scalar_t__ nportcntrs; void* scntrs; scalar_t__ ndevcntrs; void* cntrs; } ;
struct TYPE_4__ {int flags; char* name; scalar_t__ offset; } ;
struct TYPE_3__ {int flags; char* name; scalar_t__ offset; } ;

/* Variables and functions */
 int CNTR_32BIT ; 
 int CNTR_DISABLED ; 
 int CNTR_SDMA ; 
 int CNTR_VL ; 
 int C_MAX_NAME ; 
 int C_RCV_HDR_OVF_FIRST ; 
 int C_RCV_HDR_OVF_LAST ; 
 int C_VL_COUNT ; 
 int DEV_CNTR_LAST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PORT_CNTR_LAST ; 
 int SYNTH_CNT_TIME ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfi1_devdata*) ; 
 TYPE_2__* dev_cntrs ; 
 int /*<<< orphan*/  do_update_synth_timer ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (struct hfi1_devdata*) ; 
 scalar_t__ jiffies ; 
 void* FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ num_driver_cntrs ; 
 TYPE_1__* port_cntrs ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,int) ; 
 int const FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  update_synth_timer ; 
 int FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct hfi1_devdata *dd)
{
	int i, rcv_ctxts, j;
	size_t sz;
	char *p;
	char name[C_MAX_NAME];
	struct hfi1_pportdata *ppd;
	const char *bit_type_32 = ",32";
	const int bit_type_32_sz = FUNC11(bit_type_32);
	u32 sdma_engines = FUNC2(dd);

	/* set up the stats timer; the add_timer is done at the end */
	FUNC12(&dd->synth_stats_timer, update_synth_timer, 0);

	/***********************/
	/* per device counters */
	/***********************/

	/* size names and determine how many we have*/
	dd->ndevcntrs = 0;
	sz = 0;

	for (i = 0; i < DEV_CNTR_LAST; i++) {
		if (dev_cntrs[i].flags & CNTR_DISABLED) {
			FUNC4("\tSkipping %s\n", dev_cntrs[i].name);
			continue;
		}

		if (dev_cntrs[i].flags & CNTR_VL) {
			dev_cntrs[i].offset = dd->ndevcntrs;
			for (j = 0; j < C_VL_COUNT; j++) {
				FUNC10(name, C_MAX_NAME, "%s%d",
					 dev_cntrs[i].name, FUNC13(j));
				sz += FUNC11(name);
				/* Add ",32" for 32-bit counters */
				if (dev_cntrs[i].flags & CNTR_32BIT)
					sz += bit_type_32_sz;
				sz++;
				dd->ndevcntrs++;
			}
		} else if (dev_cntrs[i].flags & CNTR_SDMA) {
			dev_cntrs[i].offset = dd->ndevcntrs;
			for (j = 0; j < sdma_engines; j++) {
				FUNC10(name, C_MAX_NAME, "%s%d",
					 dev_cntrs[i].name, j);
				sz += FUNC11(name);
				/* Add ",32" for 32-bit counters */
				if (dev_cntrs[i].flags & CNTR_32BIT)
					sz += bit_type_32_sz;
				sz++;
				dd->ndevcntrs++;
			}
		} else {
			/* +1 for newline. */
			sz += FUNC11(dev_cntrs[i].name) + 1;
			/* Add ",32" for 32-bit counters */
			if (dev_cntrs[i].flags & CNTR_32BIT)
				sz += bit_type_32_sz;
			dev_cntrs[i].offset = dd->ndevcntrs;
			dd->ndevcntrs++;
		}
	}

	/* allocate space for the counter values */
	dd->cntrs = FUNC6(dd->ndevcntrs + num_driver_cntrs, sizeof(u64),
			    GFP_KERNEL);
	if (!dd->cntrs)
		goto bail;

	dd->scntrs = FUNC6(dd->ndevcntrs, sizeof(u64), GFP_KERNEL);
	if (!dd->scntrs)
		goto bail;

	/* allocate space for the counter names */
	dd->cntrnameslen = sz;
	dd->cntrnames = FUNC7(sz, GFP_KERNEL);
	if (!dd->cntrnames)
		goto bail;

	/* fill in the names */
	for (p = dd->cntrnames, i = 0; i < DEV_CNTR_LAST; i++) {
		if (dev_cntrs[i].flags & CNTR_DISABLED) {
			/* Nothing */
		} else if (dev_cntrs[i].flags & CNTR_VL) {
			for (j = 0; j < C_VL_COUNT; j++) {
				FUNC10(name, C_MAX_NAME, "%s%d",
					 dev_cntrs[i].name,
					 FUNC13(j));
				FUNC8(p, name, FUNC11(name));
				p += FUNC11(name);

				/* Counter is 32 bits */
				if (dev_cntrs[i].flags & CNTR_32BIT) {
					FUNC8(p, bit_type_32, bit_type_32_sz);
					p += bit_type_32_sz;
				}

				*p++ = '\n';
			}
		} else if (dev_cntrs[i].flags & CNTR_SDMA) {
			for (j = 0; j < sdma_engines; j++) {
				FUNC10(name, C_MAX_NAME, "%s%d",
					 dev_cntrs[i].name, j);
				FUNC8(p, name, FUNC11(name));
				p += FUNC11(name);

				/* Counter is 32 bits */
				if (dev_cntrs[i].flags & CNTR_32BIT) {
					FUNC8(p, bit_type_32, bit_type_32_sz);
					p += bit_type_32_sz;
				}

				*p++ = '\n';
			}
		} else {
			FUNC8(p, dev_cntrs[i].name, FUNC11(dev_cntrs[i].name));
			p += FUNC11(dev_cntrs[i].name);

			/* Counter is 32 bits */
			if (dev_cntrs[i].flags & CNTR_32BIT) {
				FUNC8(p, bit_type_32, bit_type_32_sz);
				p += bit_type_32_sz;
			}

			*p++ = '\n';
		}
	}

	/*********************/
	/* per port counters */
	/*********************/

	/*
	 * Go through the counters for the overflows and disable the ones we
	 * don't need. This varies based on platform so we need to do it
	 * dynamically here.
	 */
	rcv_ctxts = dd->num_rcv_contexts;
	for (i = C_RCV_HDR_OVF_FIRST + rcv_ctxts;
	     i <= C_RCV_HDR_OVF_LAST; i++) {
		port_cntrs[i].flags |= CNTR_DISABLED;
	}

	/* size port counter names and determine how many we have*/
	sz = 0;
	dd->nportcntrs = 0;
	for (i = 0; i < PORT_CNTR_LAST; i++) {
		if (port_cntrs[i].flags & CNTR_DISABLED) {
			FUNC4("\tSkipping %s\n", port_cntrs[i].name);
			continue;
		}

		if (port_cntrs[i].flags & CNTR_VL) {
			port_cntrs[i].offset = dd->nportcntrs;
			for (j = 0; j < C_VL_COUNT; j++) {
				FUNC10(name, C_MAX_NAME, "%s%d",
					 port_cntrs[i].name, FUNC13(j));
				sz += FUNC11(name);
				/* Add ",32" for 32-bit counters */
				if (port_cntrs[i].flags & CNTR_32BIT)
					sz += bit_type_32_sz;
				sz++;
				dd->nportcntrs++;
			}
		} else {
			/* +1 for newline */
			sz += FUNC11(port_cntrs[i].name) + 1;
			/* Add ",32" for 32-bit counters */
			if (port_cntrs[i].flags & CNTR_32BIT)
				sz += bit_type_32_sz;
			port_cntrs[i].offset = dd->nportcntrs;
			dd->nportcntrs++;
		}
	}

	/* allocate space for the counter names */
	dd->portcntrnameslen = sz;
	dd->portcntrnames = FUNC7(sz, GFP_KERNEL);
	if (!dd->portcntrnames)
		goto bail;

	/* fill in port cntr names */
	for (p = dd->portcntrnames, i = 0; i < PORT_CNTR_LAST; i++) {
		if (port_cntrs[i].flags & CNTR_DISABLED)
			continue;

		if (port_cntrs[i].flags & CNTR_VL) {
			for (j = 0; j < C_VL_COUNT; j++) {
				FUNC10(name, C_MAX_NAME, "%s%d",
					 port_cntrs[i].name, FUNC13(j));
				FUNC8(p, name, FUNC11(name));
				p += FUNC11(name);

				/* Counter is 32 bits */
				if (port_cntrs[i].flags & CNTR_32BIT) {
					FUNC8(p, bit_type_32, bit_type_32_sz);
					p += bit_type_32_sz;
				}

				*p++ = '\n';
			}
		} else {
			FUNC8(p, port_cntrs[i].name,
			       FUNC11(port_cntrs[i].name));
			p += FUNC11(port_cntrs[i].name);

			/* Counter is 32 bits */
			if (port_cntrs[i].flags & CNTR_32BIT) {
				FUNC8(p, bit_type_32, bit_type_32_sz);
				p += bit_type_32_sz;
			}

			*p++ = '\n';
		}
	}

	/* allocate per port storage for counter values */
	ppd = (struct hfi1_pportdata *)(dd + 1);
	for (i = 0; i < dd->num_pports; i++, ppd++) {
		ppd->cntrs = FUNC6(dd->nportcntrs, sizeof(u64), GFP_KERNEL);
		if (!ppd->cntrs)
			goto bail;

		ppd->scntrs = FUNC6(dd->nportcntrs, sizeof(u64), GFP_KERNEL);
		if (!ppd->scntrs)
			goto bail;
	}

	/* CPU counters need to be allocated and zeroed */
	if (FUNC5(dd))
		goto bail;

	dd->update_cntr_wq = FUNC1("hfi1_update_cntr_%d",
						     WQ_MEM_RECLAIM, dd->unit);
	if (!dd->update_cntr_wq)
		goto bail;

	FUNC0(&dd->update_cntr_work, do_update_synth_timer);

	FUNC9(&dd->synth_stats_timer, jiffies + HZ * SYNTH_CNT_TIME);
	return 0;
bail:
	FUNC3(dd);
	return -ENOMEM;
}