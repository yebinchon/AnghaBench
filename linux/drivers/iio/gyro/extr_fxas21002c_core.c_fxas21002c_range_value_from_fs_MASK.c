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
struct fxas21002c_data {int /*<<< orphan*/ * regmap_fields; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 unsigned int FXAS21002C_RANGE_LIMIT_DOUBLE ; 
 size_t F_FS_DOUBLE ; 
 unsigned int* fxas21002c_range_values ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct fxas21002c_data *data,
					  unsigned int range)
{
	int range_table_size = FUNC0(fxas21002c_range_values);
	bool found = false;
	int fs_double = 0;
	int ret;
	int i;

	for (i = 0; i < range_table_size; i++)
		if (fxas21002c_range_values[i] == range) {
			found = true;
			break;
		}

	if (!found)
		return -EINVAL;

	if (range > FXAS21002C_RANGE_LIMIT_DOUBLE)
		fs_double = 1;

	ret = FUNC1(data->regmap_fields[F_FS_DOUBLE], fs_double);
	if (ret < 0)
		return ret;

	return i;
}