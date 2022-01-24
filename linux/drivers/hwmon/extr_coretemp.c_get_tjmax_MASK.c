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
typedef  int u32 ;
struct device {int dummy; } ;
struct cpuinfo_x86 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_TEMPERATURE_TARGET ; 
 int FUNC0 (struct cpuinfo_x86*,int,struct device*) ; 
 scalar_t__ FUNC1 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int force_tjmax ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static int FUNC6(struct cpuinfo_x86 *c, u32 id, struct device *dev)
{
	int err;
	u32 eax, edx;
	u32 val;

	/*
	 * A new feature of current Intel(R) processors, the
	 * IA32_TEMPERATURE_TARGET contains the TjMax value
	 */
	err = FUNC5(id, MSR_IA32_TEMPERATURE_TARGET, &eax, &edx);
	if (err) {
		if (FUNC1(c))
			FUNC4(dev, "Unable to read TjMax from CPU %u\n", id);
	} else {
		val = (eax >> 16) & 0xff;
		/*
		 * If the TjMax is not plausible, an assumption
		 * will be used
		 */
		if (val) {
			FUNC2(dev, "TjMax is %d degrees C\n", val);
			return val * 1000;
		}
	}

	if (force_tjmax) {
		FUNC3(dev, "TjMax forced to %d degrees C by user\n",
			   force_tjmax);
		return force_tjmax * 1000;
	}

	/*
	 * An assumption is made for early CPUs and unreadable MSR.
	 * NOTE: the calculated value may not be correct.
	 */
	return FUNC0(c, id, dev);
}