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
typedef  int u16 ;
struct nct6775_data {int* fan_div; int has_fan_min; int* fan_min; int /*<<< orphan*/ * REG_FAN_MIN; int /*<<< orphan*/  has_fan_div; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nct6775_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nct6775_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct device *dev,
				   struct nct6775_data *data, int nr, u16 reg)
{
	u8 fan_div = data->fan_div[nr];
	u16 fan_min;

	if (!data->has_fan_div)
		return;

	/*
	 * If we failed to measure the fan speed, or the reported value is not
	 * in the optimal range, and the clock divider can be modified,
	 * let's try that for next time.
	 */
	if (reg == 0x00 && fan_div < 0x07)
		fan_div++;
	else if (reg != 0x00 && reg < 0x30 && fan_div > 0)
		fan_div--;

	if (fan_div != data->fan_div[nr]) {
		FUNC1(dev, "Modifying fan%d clock divider from %u to %u\n",
			nr + 1, FUNC2(data->fan_div[nr]),
			FUNC2(fan_div));

		/* Preserve min limit if possible */
		if (data->has_fan_min & FUNC0(nr)) {
			fan_min = data->fan_min[nr];
			if (fan_div > data->fan_div[nr]) {
				if (fan_min != 255 && fan_min > 1)
					fan_min >>= 1;
			} else {
				if (fan_min != 255) {
					fan_min <<= 1;
					if (fan_min > 254)
						fan_min = 254;
				}
			}
			if (fan_min != data->fan_min[nr]) {
				data->fan_min[nr] = fan_min;
				FUNC4(data, data->REG_FAN_MIN[nr],
						    fan_min);
			}
		}
		data->fan_div[nr] = fan_div;
		FUNC3(data, nr);
	}
}