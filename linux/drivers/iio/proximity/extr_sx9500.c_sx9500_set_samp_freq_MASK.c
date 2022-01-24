#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sx9500_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int val; int val2; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SX9500_REG_PROX_CTRL0 ; 
 int /*<<< orphan*/  SX9500_SCAN_PERIOD_MASK ; 
 int SX9500_SCAN_PERIOD_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* sx9500_samp_freq_table ; 

__attribute__((used)) static int FUNC4(struct sx9500_data *data,
				int val, int val2)
{
	int i, ret;

	for (i = 0; i < FUNC0(sx9500_samp_freq_table); i++)
		if (val == sx9500_samp_freq_table[i].val &&
		    val2 == sx9500_samp_freq_table[i].val2)
			break;

	if (i == FUNC0(sx9500_samp_freq_table))
		return -EINVAL;

	FUNC1(&data->mutex);

	ret = FUNC3(data->regmap, SX9500_REG_PROX_CTRL0,
				 SX9500_SCAN_PERIOD_MASK,
				 i << SX9500_SCAN_PERIOD_SHIFT);

	FUNC2(&data->mutex);

	return ret;
}