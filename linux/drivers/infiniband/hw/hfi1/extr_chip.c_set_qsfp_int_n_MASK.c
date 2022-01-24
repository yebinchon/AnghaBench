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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {scalar_t__ hfi1_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_QSFP1_CLEAR ; 
 int /*<<< orphan*/  ASIC_QSFP1_MASK ; 
 int /*<<< orphan*/  ASIC_QSFP2_CLEAR ; 
 int /*<<< orphan*/  ASIC_QSFP2_MASK ; 
 scalar_t__ QSFP_HFI0_INT_N ; 
 scalar_t__ FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct hfi1_pportdata *ppd, u8 enable)
{
	struct hfi1_devdata *dd = ppd->dd;
	u64 mask;

	mask = FUNC0(dd, dd->hfi1_id ? ASIC_QSFP2_MASK : ASIC_QSFP1_MASK);
	if (enable) {
		/*
		 * Clear the status register to avoid an immediate interrupt
		 * when we re-enable the IntN pin
		 */
		FUNC1(dd, dd->hfi1_id ? ASIC_QSFP2_CLEAR : ASIC_QSFP1_CLEAR,
			  QSFP_HFI0_INT_N);
		mask |= (u64)QSFP_HFI0_INT_N;
	} else {
		mask &= ~(u64)QSFP_HFI0_INT_N;
	}
	FUNC1(dd, dd->hfi1_id ? ASIC_QSFP2_MASK : ASIC_QSFP1_MASK, mask);
}