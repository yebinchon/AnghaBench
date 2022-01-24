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
struct mma7455_data {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MMA7455_REG_STATUS ; 
 unsigned int MMA7455_STATUS_DRDY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct mma7455_data *mma7455)
{
	struct device *dev = FUNC2(mma7455->regmap);
	unsigned int reg;
	int tries = 3;
	int ret;

	while (tries-- > 0) {
		ret = FUNC3(mma7455->regmap, MMA7455_REG_STATUS, &reg);
		if (ret)
			return ret;

		if (reg & MMA7455_STATUS_DRDY)
			return 0;

		FUNC1(20);
	}

	FUNC0(dev, "data not ready\n");

	return -EIO;
}