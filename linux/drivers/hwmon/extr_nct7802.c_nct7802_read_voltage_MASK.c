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
struct nct7802_data {int /*<<< orphan*/  access_lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/ * REG_VOLTAGE ; 
 int /*<<< orphan*/ ** REG_VOLTAGE_LIMIT_LSB ; 
 int /*<<< orphan*/ * REG_VOLTAGE_LIMIT_MSB ; 
 int** REG_VOLTAGE_LIMIT_MSB_SHIFT ; 
 int /*<<< orphan*/  REG_VOLTAGE_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int* nct7802_vmul ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct nct7802_data *data, int nr, int index)
{
	unsigned int v1, v2;
	int ret;

	FUNC0(&data->access_lock);
	if (index == 0) {	/* voltage */
		ret = FUNC2(data->regmap, REG_VOLTAGE[nr], &v1);
		if (ret < 0)
			goto abort;
		ret = FUNC2(data->regmap, REG_VOLTAGE_LOW, &v2);
		if (ret < 0)
			goto abort;
		ret = ((v1 << 2) | (v2 >> 6)) * nct7802_vmul[nr];
	}  else {	/* limit */
		int shift = 8 - REG_VOLTAGE_LIMIT_MSB_SHIFT[index - 1][nr];

		ret = FUNC2(data->regmap,
				  REG_VOLTAGE_LIMIT_LSB[index - 1][nr], &v1);
		if (ret < 0)
			goto abort;
		ret = FUNC2(data->regmap, REG_VOLTAGE_LIMIT_MSB[nr],
				  &v2);
		if (ret < 0)
			goto abort;
		ret = (v1 | ((v2 << shift) & 0x300)) * nct7802_vmul[nr];
	}
abort:
	FUNC1(&data->access_lock);
	return ret;
}