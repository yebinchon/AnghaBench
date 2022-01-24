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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;
struct err_reg_info {int /*<<< orphan*/  mask; int /*<<< orphan*/  desc; int /*<<< orphan*/  (* handler ) (struct hfi1_devdata*,scalar_t__,scalar_t__) ;int /*<<< orphan*/  clear; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 scalar_t__ MAX_CLEAR_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  (*) (struct hfi1_devdata*,scalar_t__,scalar_t__)) ; 
 scalar_t__ FUNC2 (struct hfi1_devdata*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct hfi1_devdata *dd,
				 u32 context,
				 const struct err_reg_info *eri)
{
	u64 reg;
	u32 count;

	/* read in a loop until no more errors are seen */
	count = 0;
	while (1) {
		reg = FUNC2(dd, context, eri->status);
		if (reg == 0)
			break;
		FUNC4(dd, context, eri->clear, reg);
		if (FUNC1(eri->handler))
			eri->handler(dd, context, reg);
		count++;
		if (count > MAX_CLEAR_COUNT) {
			u64 mask;

			FUNC0(dd, "Repeating %s bits 0x%llx - masking\n",
				   eri->desc, reg);
			/*
			 * Read-modify-write so any other masked bits
			 * remain masked.
			 */
			mask = FUNC2(dd, context, eri->mask);
			mask &= ~reg;
			FUNC4(dd, context, eri->mask, mask);
			break;
		}
	}
}