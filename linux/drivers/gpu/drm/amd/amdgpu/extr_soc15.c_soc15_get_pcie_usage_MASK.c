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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct amdgpu_device {int flags; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int /*<<< orphan*/  COUNTER0_UPPER ; 
 int /*<<< orphan*/  COUNTER1_UPPER ; 
 int /*<<< orphan*/  EVENT0_SEL ; 
 int /*<<< orphan*/  EVENT1_SEL ; 
 int /*<<< orphan*/  PCIE_PERF_CNTL_TXCLK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  smnPCIE_PERF_CNTL_TXCLK ; 
 int /*<<< orphan*/  smnPCIE_PERF_COUNT0_TXCLK ; 
 int /*<<< orphan*/  smnPCIE_PERF_COUNT1_TXCLK ; 
 int /*<<< orphan*/  smnPCIE_PERF_COUNT_CNTL ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev, uint64_t *count0,
				 uint64_t *count1)
{
	uint32_t perfctr = 0;
	uint64_t cnt0_of, cnt1_of;
	int tmp;

	/* This reports 0 on APUs, so return to avoid writing/reading registers
	 * that may or may not be different from their GPU counterparts
	 */
	if (adev->flags & AMD_IS_APU)
		return;

	/* Set the 2 events that we wish to watch, defined above */
	/* Reg 40 is # received msgs */
	/* Reg 104 is # of posted requests sent */
	perfctr = FUNC1(perfctr, PCIE_PERF_CNTL_TXCLK, EVENT0_SEL, 40);
	perfctr = FUNC1(perfctr, PCIE_PERF_CNTL_TXCLK, EVENT1_SEL, 104);

	/* Write to enable desired perf counters */
	FUNC3(smnPCIE_PERF_CNTL_TXCLK, perfctr);
	/* Zero out and enable the perf counters
	 * Write 0x5:
	 * Bit 0 = Start all counters(1)
	 * Bit 2 = Global counter reset enable(1)
	 */
	FUNC3(smnPCIE_PERF_COUNT_CNTL, 0x00000005);

	FUNC4(1000);

	/* Load the shadow and disable the perf counters
	 * Write 0x2:
	 * Bit 0 = Stop counters(0)
	 * Bit 1 = Load the shadow counters(1)
	 */
	FUNC3(smnPCIE_PERF_COUNT_CNTL, 0x00000002);

	/* Read register values to get any >32bit overflow */
	tmp = FUNC2(smnPCIE_PERF_CNTL_TXCLK);
	cnt0_of = FUNC0(tmp, PCIE_PERF_CNTL_TXCLK, COUNTER0_UPPER);
	cnt1_of = FUNC0(tmp, PCIE_PERF_CNTL_TXCLK, COUNTER1_UPPER);

	/* Get the values and add the overflow */
	*count0 = FUNC2(smnPCIE_PERF_COUNT0_TXCLK) | (cnt0_of << 32);
	*count1 = FUNC2(smnPCIE_PERF_COUNT1_TXCLK) | (cnt1_of << 32);
}