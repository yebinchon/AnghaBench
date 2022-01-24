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
struct max30100_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX30100_REG_TEMP_FRACTION ; 
 int /*<<< orphan*/  MAX30100_REG_TEMP_INTEGER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct max30100_data *data, int *val)
{
	int ret;
	unsigned int reg;

	ret = FUNC0(data->regmap, MAX30100_REG_TEMP_INTEGER, &reg);
	if (ret < 0)
		return ret;
	*val = reg << 4;

	ret = FUNC0(data->regmap, MAX30100_REG_TEMP_FRACTION, &reg);
	if (ret < 0)
		return ret;

	*val |= reg & 0xf;
	*val = FUNC1(*val, 11);

	return 0;
}