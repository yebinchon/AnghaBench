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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_CFG_SBUS_EXECUTE ; 
 int /*<<< orphan*/  ASIC_CFG_SBUS_EXECUTE_EXECUTE_SMASK ; 
 int /*<<< orphan*/  ASIC_STS_SBUS_COUNTERS ; 
 int /*<<< orphan*/  ASIC_STS_SBUS_RESULT ; 
 int ASIC_STS_SBUS_RESULT_DONE_SMASK ; 
 int ASIC_STS_SBUS_RESULT_RCV_DATA_VALID_SMASK ; 
 int ETIME ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  EXECUTE ; 
 int /*<<< orphan*/  RCV_DATA_VALID ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ SBUS_MAX_POLL_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*) ; 
 int FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct hfi1_devdata *dd,
		      u8 receiver_addr, u8 data_addr, u8 command, u32 data_in)
{
	u64 reg, count = 0;

	/* make sure fast mode is clear */
	FUNC1(dd);

	FUNC3(dd, receiver_addr, data_addr, command, data_in);
	FUNC5(dd, ASIC_CFG_SBUS_EXECUTE,
		  ASIC_CFG_SBUS_EXECUTE_EXECUTE_SMASK);
	/* Wait for both DONE and RCV_DATA_VALID to go high */
	reg = FUNC2(dd, ASIC_STS_SBUS_RESULT);
	while (!((reg & ASIC_STS_SBUS_RESULT_DONE_SMASK) &&
		 (reg & ASIC_STS_SBUS_RESULT_RCV_DATA_VALID_SMASK))) {
		if (count++ >= SBUS_MAX_POLL_COUNT) {
			u64 counts = FUNC2(dd, ASIC_STS_SBUS_COUNTERS);
			/*
			 * If the loop has timed out, we are OK if DONE bit
			 * is set and RCV_DATA_VALID and EXECUTE counters
			 * are the same. If not, we cannot proceed.
			 */
			if ((reg & ASIC_STS_SBUS_RESULT_DONE_SMASK) &&
			    (FUNC0(counts, RCV_DATA_VALID) ==
			     FUNC0(counts, EXECUTE)))
				break;
			return -ETIMEDOUT;
		}
		FUNC4(1);
		reg = FUNC2(dd, ASIC_STS_SBUS_RESULT);
	}
	count = 0;
	FUNC5(dd, ASIC_CFG_SBUS_EXECUTE, 0);
	/* Wait for DONE to clear after EXECUTE is cleared */
	reg = FUNC2(dd, ASIC_STS_SBUS_RESULT);
	while (reg & ASIC_STS_SBUS_RESULT_DONE_SMASK) {
		if (count++ >= SBUS_MAX_POLL_COUNT)
			return -ETIME;
		FUNC4(1);
		reg = FUNC2(dd, ASIC_STS_SBUS_RESULT);
	}
	return 0;
}