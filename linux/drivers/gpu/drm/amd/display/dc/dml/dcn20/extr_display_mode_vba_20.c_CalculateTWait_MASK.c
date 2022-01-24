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

/* Variables and functions */
 double FUNC0 (double,double) ; 

__attribute__((used)) static double FUNC1(
		unsigned int PrefetchMode,
		double DRAMClockChangeLatency,
		double UrgentLatencyPixelDataOnly,
		double SREnterPlusExitTime)
{
	if (PrefetchMode == 0) {
		return FUNC0(
				DRAMClockChangeLatency + UrgentLatencyPixelDataOnly,
				FUNC0(SREnterPlusExitTime, UrgentLatencyPixelDataOnly));
	} else if (PrefetchMode == 1) {
		return FUNC0(SREnterPlusExitTime, UrgentLatencyPixelDataOnly);
	} else {
		return UrgentLatencyPixelDataOnly;
	}
}