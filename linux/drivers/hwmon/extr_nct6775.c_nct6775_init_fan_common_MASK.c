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
struct nct6775_data {int has_fan_min; scalar_t__ has_fan_div; int /*<<< orphan*/ * REG_FAN_MIN; int /*<<< orphan*/  fan_min; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nct6775_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct nct6775_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nct6775_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct device *dev,
				    struct nct6775_data *data)
{
	int i;
	u8 reg;

	if (data->has_fan_div)
		FUNC2(data);

	/*
	 * If fan_min is not set (0), set it to 0xff to disable it. This
	 * prevents the unnecessary warning when fanX_min is reported as 0.
	 */
	for (i = 0; i < FUNC0(data->fan_min); i++) {
		if (data->has_fan_min & FUNC1(i)) {
			reg = FUNC3(data, data->REG_FAN_MIN[i]);
			if (!reg)
				FUNC4(data, data->REG_FAN_MIN[i],
						    data->has_fan_div ? 0xff
								      : 0xff1f);
		}
	}
}