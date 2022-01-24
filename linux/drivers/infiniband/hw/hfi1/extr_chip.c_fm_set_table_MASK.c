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
#define  FM_TBL_BUFFER_CONTROL 131 
#define  FM_TBL_SC2VLNT 130 
#define  FM_TBL_VL_HIGH_ARB 129 
#define  FM_TBL_VL_LOW_ARB 128 
 int /*<<< orphan*/  HI_PRIO_TABLE ; 
 int /*<<< orphan*/  LO_PRIO_TABLE ; 
 int /*<<< orphan*/  SEND_HIGH_PRIORITY_LIST ; 
 int /*<<< orphan*/  SEND_LOW_PRIORITY_LIST ; 
 int /*<<< orphan*/  VL_ARB_HIGH_PRIO_TABLE_SIZE ; 
 int /*<<< orphan*/  VL_ARB_LOW_PRIO_TABLE_SIZE ; 
 int FUNC0 (struct hfi1_pportdata*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 struct vl_arb_cache* FUNC3 (struct hfi1_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vl_arb_cache*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct vl_arb_cache*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_pportdata*,int /*<<< orphan*/ ) ; 

int FUNC7(struct hfi1_pportdata *ppd, int which, void *t)
{
	int ret = 0;
	struct vl_arb_cache *vlc;

	switch (which) {
	case FM_TBL_VL_HIGH_ARB:
		vlc = FUNC3(ppd, HI_PRIO_TABLE);
		if (FUNC4(vlc, t)) {
			FUNC6(ppd, HI_PRIO_TABLE);
			break;
		}
		FUNC5(vlc, t);
		FUNC6(ppd, HI_PRIO_TABLE);
		ret = FUNC2(ppd, SEND_HIGH_PRIORITY_LIST,
				     VL_ARB_HIGH_PRIO_TABLE_SIZE, t);
		break;
	case FM_TBL_VL_LOW_ARB:
		vlc = FUNC3(ppd, LO_PRIO_TABLE);
		if (FUNC4(vlc, t)) {
			FUNC6(ppd, LO_PRIO_TABLE);
			break;
		}
		FUNC5(vlc, t);
		FUNC6(ppd, LO_PRIO_TABLE);
		ret = FUNC2(ppd, SEND_LOW_PRIORITY_LIST,
				     VL_ARB_LOW_PRIO_TABLE_SIZE, t);
		break;
	case FM_TBL_BUFFER_CONTROL:
		ret = FUNC0(ppd, t);
		break;
	case FM_TBL_SC2VLNT:
		FUNC1(ppd->dd, t);
		break;
	default:
		ret = -EINVAL;
	}
	return ret;
}