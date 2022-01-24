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
struct ltr501_data {int /*<<< orphan*/  reg_it; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int* int_time_mapping ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct ltr501_data *data, int *val, int *val2)
{
	int ret, index;

	ret = FUNC1(data->reg_it, &index);
	if (ret < 0)
		return ret;

	/* Make sure integ time index is valid */
	if (index < 0 || index >= FUNC0(int_time_mapping))
		return -EINVAL;

	*val2 = int_time_mapping[index];
	*val = 0;

	return IIO_VAL_INT_PLUS_MICRO;
}