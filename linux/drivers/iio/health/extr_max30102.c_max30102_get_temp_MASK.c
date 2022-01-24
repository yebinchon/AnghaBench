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
struct max30102_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX30102_REG_TEMP_CONFIG ; 
 int /*<<< orphan*/  MAX30102_REG_TEMP_CONFIG_TEMP_EN ; 
 int FUNC0 (struct max30102_data*,int*) ; 
 int FUNC1 (struct max30102_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct max30102_data *data, int *val, bool en)
{
	int ret;

	if (en) {
		ret = FUNC1(data, true);
		if (ret)
			return ret;
	}

	/* start acquisition */
	ret = FUNC3(data->regmap, MAX30102_REG_TEMP_CONFIG,
				 MAX30102_REG_TEMP_CONFIG_TEMP_EN,
				 MAX30102_REG_TEMP_CONFIG_TEMP_EN);
	if (ret)
		goto out;

	FUNC2(35);
	ret = FUNC0(data, val);

out:
	if (en)
		FUNC1(data, false);

	return ret;
}