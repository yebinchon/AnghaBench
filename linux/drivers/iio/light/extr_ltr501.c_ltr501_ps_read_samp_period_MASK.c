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
struct ltr501_data {int /*<<< orphan*/  reg_ps_rate; } ;
struct TYPE_3__ {int time_val; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int IIO_VAL_INT ; 
 TYPE_1__* ltr501_ps_samp_table ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct ltr501_data *data, int *val)
{
	int ret, i;

	ret = FUNC1(data->reg_ps_rate, &i);
	if (ret < 0)
		return ret;

	if (i < 0 || i >= FUNC0(ltr501_ps_samp_table))
		return -EINVAL;

	*val = ltr501_ps_samp_table[i].time_val;

	return IIO_VAL_INT;
}