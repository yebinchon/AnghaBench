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
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * sens_cpu_amps ; 
 int /*<<< orphan*/ * sens_cpu_temp ; 
 int /*<<< orphan*/ * sens_cpu_volts ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(int cpu, s32 *temp, s32 *power)
{
	s32 dtemp, volts, amps;
	int rc;

	/* Get diode temperature */
	rc = FUNC3(sens_cpu_temp[cpu], &dtemp);
	if (rc) {
		FUNC0("  CPU%d: temp reading error !\n", cpu);
		return -EIO;
	}
	FUNC1("  CPU%d: temp   = %d.%03d\n", cpu, FUNC2((dtemp)));
	*temp = dtemp;

	/* Get voltage */
	rc = FUNC3(sens_cpu_volts[cpu], &volts);
	if (rc) {
		FUNC0("  CPU%d, volts reading error !\n", cpu);
		return -EIO;
	}
	FUNC1("  CPU%d: volts  = %d.%03d\n", cpu, FUNC2((volts)));

	/* Get current */
	rc = FUNC3(sens_cpu_amps[cpu], &amps);
	if (rc) {
		FUNC0("  CPU%d, current reading error !\n", cpu);
		return -EIO;
	}
	FUNC1("  CPU%d: amps   = %d.%03d\n", cpu, FUNC2((amps)));

	/* Calculate power */

	/* Scale voltage and current raw sensor values according to fixed scales
	 * obtained in Darwin and calculate power from I and V
	 */
	*power = (((u64)volts) * ((u64)amps)) >> 16;

	FUNC1("  CPU%d: power  = %d.%03d\n", cpu, FUNC2((*power)));

	return 0;

}