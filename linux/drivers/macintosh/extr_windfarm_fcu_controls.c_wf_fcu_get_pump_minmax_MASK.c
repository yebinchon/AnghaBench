#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct wf_fcu_fan {int min; int max; TYPE_1__ ctrl; } ;
struct mpu_data {int /*<<< orphan*/  processor_part_num; } ;

/* Variables and functions */
 int CPU_PUMP_OUTPUT_MAX ; 
 int CPU_PUMP_OUTPUT_MIN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int**,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 
 struct mpu_data* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wf_fcu_fan *fan)
{
	const struct mpu_data *mpu = FUNC4(0);
	u16 pump_min = 0, pump_max = 0xffff;
	u16 tmp[4];

	/* Try to fetch pumps min/max infos from eeprom */
	if (mpu) {
		FUNC2(&tmp, mpu->processor_part_num, 8);
		if (tmp[0] != 0xffff && tmp[1] != 0xffff) {
			pump_min = FUNC1(pump_min, tmp[0]);
			pump_max = FUNC3(pump_max, tmp[1]);
		}
		if (tmp[2] != 0xffff && tmp[3] != 0xffff) {
			pump_min = FUNC1(pump_min, tmp[2]);
			pump_max = FUNC3(pump_max, tmp[3]);
		}
	}

	/* Double check the values, this _IS_ needed as the EEPROM on
	 * some dual 2.5Ghz G5s seem, at least, to have both min & max
	 * same to the same value ... (grrrr)
	 */
	if (pump_min == pump_max || pump_min == 0 || pump_max == 0xffff) {
		pump_min = CPU_PUMP_OUTPUT_MIN;
		pump_max = CPU_PUMP_OUTPUT_MAX;
	}

	fan->min = pump_min;
	fan->max = pump_max;

	FUNC0("wf_fcu: pump min/max for %s set to: [%d..%d] RPM\n",
	    fan->ctrl.name, pump_min, pump_max);
}