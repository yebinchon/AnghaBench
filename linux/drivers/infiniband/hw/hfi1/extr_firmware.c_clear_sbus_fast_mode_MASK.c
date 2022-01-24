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
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_CFG_SBUS_EXECUTE ; 
 int /*<<< orphan*/  ASIC_STS_SBUS_COUNTERS ; 
 int /*<<< orphan*/  EXECUTE ; 
 int /*<<< orphan*/  RCV_DATA_VALID ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ SBUS_MAX_POLL_COUNT ; 
 scalar_t__ FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct hfi1_devdata *dd)
{
	u64 reg, count = 0;

	reg = FUNC1(dd, ASIC_STS_SBUS_COUNTERS);
	while (FUNC0(reg, EXECUTE) !=
	       FUNC0(reg, RCV_DATA_VALID)) {
		if (count++ >= SBUS_MAX_POLL_COUNT)
			break;
		FUNC2(1);
		reg = FUNC1(dd, ASIC_STS_SBUS_COUNTERS);
	}
	FUNC3(dd, ASIC_CFG_SBUS_EXECUTE, 0);
}