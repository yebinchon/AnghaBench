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
struct dps310_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct dps310_data *data)
{
	int rc;
	int reg;

	rc = FUNC1(data->regmap, 0x32, &reg);
	if (rc < 0)
		return rc;

	/*
	 * If bit 1 is set then the device is okay, and the workaround does not
	 * need to be applied
	 */
	if (reg & FUNC0(1))
		return 0;

	rc = FUNC2(data->regmap, 0x0e, 0xA5);
	if (rc < 0)
		return rc;

	rc = FUNC2(data->regmap, 0x0f, 0x96);
	if (rc < 0)
		return rc;

	rc = FUNC2(data->regmap, 0x62, 0x02);
	if (rc < 0)
		return rc;

	rc = FUNC2(data->regmap, 0x0e, 0x00);
	if (rc < 0)
		return rc;

	return FUNC2(data->regmap, 0x0f, 0x00);
}