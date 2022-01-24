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
typedef  int u64 ;
struct hfi1_pportdata {int* pkeys; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK ; 
 scalar_t__ RCV_PARTITION_KEY ; 
 int RCV_PARTITION_KEY_PARTITION_KEY_A_MASK ; 
 int RCV_PARTITION_KEY_PARTITION_KEY_B_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*) ; 
 int FUNC2 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct hfi1_pportdata *ppd)
{
	struct hfi1_devdata *dd = ppd->dd;
	u64 reg = 0;
	int i;

	FUNC1(dd, "Setting partition keys\n");
	for (i = 0; i < FUNC2(dd); i++) {
		reg |= (ppd->pkeys[i] &
			RCV_PARTITION_KEY_PARTITION_KEY_A_MASK) <<
			((i % 4) *
			 RCV_PARTITION_KEY_PARTITION_KEY_B_SHIFT);
		/* Each register holds 4 PKey values. */
		if ((i % 4) == 3) {
			FUNC3(dd, RCV_PARTITION_KEY +
				  ((i - 3) * 2), reg);
			reg = 0;
		}
	}

	/* Always enable HW pkeys check when pkeys table is set */
	FUNC0(dd, RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK);
}