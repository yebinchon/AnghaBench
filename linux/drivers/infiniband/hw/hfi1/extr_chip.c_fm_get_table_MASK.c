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
struct vl_arb_cache {int dummy; } ;
struct hfi1_pportdata {int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int EINVAL ; 
#define  FM_TBL_BUFFER_CONTROL 133 
#define  FM_TBL_SC2VLNT 132 
#define  FM_TBL_VL_HIGH_ARB 131 
#define  FM_TBL_VL_LOW_ARB 130 
#define  FM_TBL_VL_PREEMPT_ELEMS 129 
#define  FM_TBL_VL_PREEMPT_MATRIX 128 
 int /*<<< orphan*/  HI_PRIO_TABLE ; 
 int /*<<< orphan*/  LO_PRIO_TABLE ; 
 int /*<<< orphan*/  OPA_MAX_VLS ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct vl_arb_cache*,void*) ; 
 struct vl_arb_cache* FUNC4 (struct hfi1_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_pportdata*,int /*<<< orphan*/ ) ; 

int FUNC6(struct hfi1_pportdata *ppd, int which, void *t)

{
	int size;
	struct vl_arb_cache *vlc;

	switch (which) {
	case FM_TBL_VL_HIGH_ARB:
		size = 256;
		/*
		 * OPA specifies 128 elements (of 2 bytes each), though
		 * HFI supports only 16 elements in h/w.
		 */
		vlc = FUNC4(ppd, HI_PRIO_TABLE);
		FUNC3(vlc, t);
		FUNC5(ppd, HI_PRIO_TABLE);
		break;
	case FM_TBL_VL_LOW_ARB:
		size = 256;
		/*
		 * OPA specifies 128 elements (of 2 bytes each), though
		 * HFI supports only 16 elements in h/w.
		 */
		vlc = FUNC4(ppd, LO_PRIO_TABLE);
		FUNC3(vlc, t);
		FUNC5(ppd, LO_PRIO_TABLE);
		break;
	case FM_TBL_BUFFER_CONTROL:
		size = FUNC0(ppd->dd, t, NULL);
		break;
	case FM_TBL_SC2VLNT:
		size = FUNC1(ppd->dd, t);
		break;
	case FM_TBL_VL_PREEMPT_ELEMS:
		size = 256;
		/* OPA specifies 128 elements, of 2 bytes each */
		FUNC2(ppd->dd, OPA_MAX_VLS, t);
		break;
	case FM_TBL_VL_PREEMPT_MATRIX:
		size = 256;
		/*
		 * OPA specifies that this is the same size as the VL
		 * arbitration tables (i.e., 256 bytes).
		 */
		break;
	default:
		return -EINVAL;
	}
	return size;
}