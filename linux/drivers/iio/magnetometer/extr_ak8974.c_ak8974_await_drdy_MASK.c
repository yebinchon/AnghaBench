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
struct ak8974 {TYPE_1__* i2c; int /*<<< orphan*/  map; int /*<<< orphan*/  drdy_complete; scalar_t__ drdy_irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK8974_MEASTIME ; 
 int /*<<< orphan*/  AK8974_STATUS ; 
 unsigned int AK8974_STATUS_DRDY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct ak8974 *ak8974)
{
	int timeout = 2;
	unsigned int val;
	int ret;

	if (ak8974->drdy_irq) {
		ret = FUNC4(&ak8974->drdy_complete,
					1 + FUNC1(1000));
		if (!ret) {
			FUNC0(&ak8974->i2c->dev,
				"timeout waiting for DRDY IRQ\n");
			return -ETIMEDOUT;
		}
		return 0;
	}

	/* Default delay-based poll loop */
	do {
		FUNC2(AK8974_MEASTIME);
		ret = FUNC3(ak8974->map, AK8974_STATUS, &val);
		if (ret < 0)
			return ret;
		if (val & AK8974_STATUS_DRDY)
			return 0;
	} while (--timeout);

	FUNC0(&ak8974->i2c->dev, "timeout waiting for DRDY\n");
	return -ETIMEDOUT;
}