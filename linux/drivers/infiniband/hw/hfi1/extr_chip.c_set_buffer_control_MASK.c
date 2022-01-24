#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct hfi1_pportdata {int actual_vls_operational; int vls_operational; scalar_t__ port; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;
struct buffer_control {scalar_t__ overall_shared_limit; TYPE_1__* vl; } ;
typedef  int /*<<< orphan*/  lowering_dedicated ;
typedef  int /*<<< orphan*/  changing ;
struct TYPE_2__ {scalar_t__ dedicated; scalar_t__ shared; } ;

/* Variables and functions */
 int NUM_USABLE_VLS ; 
 int OPA_MAX_VLS ; 
 int SEND_CM_CREDIT_USED_STATUS_VL0_RETURN_CREDIT_STATUS_SMASK ; 
 int SEND_CM_CREDIT_USED_STATUS_VL15_RETURN_CREDIT_STATUS_SMASK ; 
 int SEND_CM_CREDIT_USED_STATUS_VL1_RETURN_CREDIT_STATUS_SMASK ; 
 int SEND_CM_CREDIT_USED_STATUS_VL2_RETURN_CREDIT_STATUS_SMASK ; 
 int SEND_CM_CREDIT_USED_STATUS_VL3_RETURN_CREDIT_STATUS_SMASK ; 
 int SEND_CM_CREDIT_USED_STATUS_VL4_RETURN_CREDIT_STATUS_SMASK ; 
 int SEND_CM_CREDIT_USED_STATUS_VL5_RETURN_CREDIT_STATUS_SMASK ; 
 int SEND_CM_CREDIT_USED_STATUS_VL6_RETURN_CREDIT_STATUS_SMASK ; 
 int SEND_CM_CREDIT_USED_STATUS_VL7_RETURN_CREDIT_STATUS_SMASK ; 
 int TXE_NUM_DATA_VL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,struct buffer_control*,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*,int,char*,scalar_t__) ; 
 int FUNC5 (struct hfi1_devdata*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct hfi1_devdata*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_devdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct hfi1_devdata*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct hfi1_devdata*,int,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct hfi1_devdata*,int const,char*) ; 

int FUNC13(struct hfi1_pportdata *ppd,
		       struct buffer_control *new_bc)
{
	struct hfi1_devdata *dd = ppd->dd;
	u64 changing_mask, ld_mask, stat_mask;
	int change_count;
	int i, use_all_mask;
	int this_shared_changing;
	int vl_count = 0, ret;
	/*
	 * A0: add the variable any_shared_limit_changing below and in the
	 * algorithm above.  If removing A0 support, it can be removed.
	 */
	int any_shared_limit_changing;
	struct buffer_control cur_bc;
	u8 changing[OPA_MAX_VLS];
	u8 lowering_dedicated[OPA_MAX_VLS];
	u16 cur_total;
	u32 new_total = 0;
	const u64 all_mask =
	SEND_CM_CREDIT_USED_STATUS_VL0_RETURN_CREDIT_STATUS_SMASK
	 | SEND_CM_CREDIT_USED_STATUS_VL1_RETURN_CREDIT_STATUS_SMASK
	 | SEND_CM_CREDIT_USED_STATUS_VL2_RETURN_CREDIT_STATUS_SMASK
	 | SEND_CM_CREDIT_USED_STATUS_VL3_RETURN_CREDIT_STATUS_SMASK
	 | SEND_CM_CREDIT_USED_STATUS_VL4_RETURN_CREDIT_STATUS_SMASK
	 | SEND_CM_CREDIT_USED_STATUS_VL5_RETURN_CREDIT_STATUS_SMASK
	 | SEND_CM_CREDIT_USED_STATUS_VL6_RETURN_CREDIT_STATUS_SMASK
	 | SEND_CM_CREDIT_USED_STATUS_VL7_RETURN_CREDIT_STATUS_SMASK
	 | SEND_CM_CREDIT_USED_STATUS_VL15_RETURN_CREDIT_STATUS_SMASK;

#define valid_vl(idx) ((idx) < TXE_NUM_DATA_VL || (idx) == 15)
#define NUM_USABLE_VLS 16	/* look at VL15 and less */

	/* find the new total credits, do sanity check on unused VLs */
	for (i = 0; i < OPA_MAX_VLS; i++) {
		if (valid_vl(i)) {
			new_total += FUNC0(new_bc->vl[i].dedicated);
			continue;
		}
		FUNC4(dd, i, "dedicated",
			    FUNC0(new_bc->vl[i].dedicated));
		FUNC4(dd, i, "shared",
			    FUNC0(new_bc->vl[i].shared));
		new_bc->vl[i].dedicated = 0;
		new_bc->vl[i].shared = 0;
	}
	new_total += FUNC0(new_bc->overall_shared_limit);

	/* fetch the current values */
	FUNC1(dd, &cur_bc, &cur_total);

	/*
	 * Create the masks we will use.
	 */
	FUNC3(changing, 0, sizeof(changing));
	FUNC3(lowering_dedicated, 0, sizeof(lowering_dedicated));
	/*
	 * NOTE: Assumes that the individual VL bits are adjacent and in
	 * increasing order
	 */
	stat_mask =
		SEND_CM_CREDIT_USED_STATUS_VL0_RETURN_CREDIT_STATUS_SMASK;
	changing_mask = 0;
	ld_mask = 0;
	change_count = 0;
	any_shared_limit_changing = 0;
	for (i = 0; i < NUM_USABLE_VLS; i++, stat_mask <<= 1) {
		if (!valid_vl(i))
			continue;
		this_shared_changing = new_bc->vl[i].shared
						!= cur_bc.vl[i].shared;
		if (this_shared_changing)
			any_shared_limit_changing = 1;
		if (new_bc->vl[i].dedicated != cur_bc.vl[i].dedicated ||
		    this_shared_changing) {
			changing[i] = 1;
			changing_mask |= stat_mask;
			change_count++;
		}
		if (FUNC0(new_bc->vl[i].dedicated) <
					FUNC0(cur_bc.vl[i].dedicated)) {
			lowering_dedicated[i] = 1;
			ld_mask |= stat_mask;
		}
	}

	/* bracket the credit change with a total adjustment */
	if (new_total > cur_total)
		FUNC7(dd, new_total);

	/*
	 * Start the credit change algorithm.
	 */
	use_all_mask = 0;
	if ((FUNC0(new_bc->overall_shared_limit) <
	     FUNC0(cur_bc.overall_shared_limit)) ||
	    (FUNC2(dd) && any_shared_limit_changing)) {
		FUNC8(dd, 0);
		cur_bc.overall_shared_limit = 0;
		use_all_mask = 1;
	}

	for (i = 0; i < NUM_USABLE_VLS; i++) {
		if (!valid_vl(i))
			continue;

		if (changing[i]) {
			FUNC10(dd, i, 0);
			cur_bc.vl[i].shared = 0;
		}
	}

	FUNC12(dd, use_all_mask ? all_mask : changing_mask,
				 "shared");

	if (change_count > 0) {
		for (i = 0; i < NUM_USABLE_VLS; i++) {
			if (!valid_vl(i))
				continue;

			if (lowering_dedicated[i]) {
				FUNC9(dd, i,
						 FUNC0(new_bc->
							     vl[i].dedicated));
				cur_bc.vl[i].dedicated =
						new_bc->vl[i].dedicated;
			}
		}

		FUNC12(dd, ld_mask, "dedicated");

		/* now raise all dedicated that are going up */
		for (i = 0; i < NUM_USABLE_VLS; i++) {
			if (!valid_vl(i))
				continue;

			if (FUNC0(new_bc->vl[i].dedicated) >
					FUNC0(cur_bc.vl[i].dedicated))
				FUNC9(dd, i,
						 FUNC0(new_bc->
							     vl[i].dedicated));
		}
	}

	/* next raise all shared that are going up */
	for (i = 0; i < NUM_USABLE_VLS; i++) {
		if (!valid_vl(i))
			continue;

		if (FUNC0(new_bc->vl[i].shared) >
				FUNC0(cur_bc.vl[i].shared))
			FUNC10(dd, i, FUNC0(new_bc->vl[i].shared));
	}

	/* finally raise the global shared */
	if (FUNC0(new_bc->overall_shared_limit) >
	    FUNC0(cur_bc.overall_shared_limit))
		FUNC8(dd,
				  FUNC0(new_bc->overall_shared_limit));

	/* bracket the credit change with a total adjustment */
	if (new_total < cur_total)
		FUNC7(dd, new_total);

	/*
	 * Determine the actual number of operational VLS using the number of
	 * dedicated and shared credits for each VL.
	 */
	if (change_count > 0) {
		for (i = 0; i < TXE_NUM_DATA_VL; i++)
			if (FUNC0(new_bc->vl[i].dedicated) > 0 ||
			    FUNC0(new_bc->vl[i].shared) > 0)
				vl_count++;
		ppd->actual_vls_operational = vl_count;
		ret = FUNC6(dd, ppd->port - 1, vl_count ?
				    ppd->actual_vls_operational :
				    ppd->vls_operational,
				    NULL);
		if (ret == 0)
			ret = FUNC5(dd, ppd->port - 1, vl_count ?
					   ppd->actual_vls_operational :
					   ppd->vls_operational, NULL);
		if (ret)
			return ret;
	}
	return 0;
}