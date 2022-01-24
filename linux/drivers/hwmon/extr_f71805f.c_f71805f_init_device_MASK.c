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
typedef  int u8 ;
struct f71805f_data {int* fan_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  F71805F_REG_START ; 
 int FAN_CTRL_LATCH_FULL ; 
 void* FUNC1 (struct f71805f_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f71805f_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct f71805f_data *data)
{
	u8 reg;
	int i;

	reg = FUNC1(data, F71805F_REG_START);
	if ((reg & 0x41) != 0x01) {
		FUNC3("Starting monitoring operations\n");
		FUNC2(data, F71805F_REG_START, (reg | 0x01) & ~0x40);
	}

	/*
	 * Fan monitoring can be disabled. If it is, we won't be polling
	 * the register values, and won't create the related sysfs files.
	 */
	for (i = 0; i < 3; i++) {
		data->fan_ctrl[i] = FUNC1(data,
						  FUNC0(i));
		/*
		 * Clear latch full bit, else "speed mode" fan speed control
		 * doesn't work
		 */
		if (data->fan_ctrl[i] & FAN_CTRL_LATCH_FULL) {
			data->fan_ctrl[i] &= ~FAN_CTRL_LATCH_FULL;
			FUNC2(data, FUNC0(i),
				       data->fan_ctrl[i]);
		}
	}
}