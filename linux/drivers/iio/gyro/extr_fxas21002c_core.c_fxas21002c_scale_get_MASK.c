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
struct fxas21002c_data {int /*<<< orphan*/  lock; int /*<<< orphan*/ * regmap_fields; } ;

/* Variables and functions */
 size_t F_FS ; 
 int FUNC0 (struct fxas21002c_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct fxas21002c_data *data, int *val)
{
	int fs_bits;
	int scale;
	int ret;

	FUNC1(&data->lock);
	ret = FUNC3(data->regmap_fields[F_FS], &fs_bits);
	if (ret < 0)
		goto data_unlock;

	scale = FUNC0(data, fs_bits);
	if (scale < 0) {
		ret = scale;
		goto data_unlock;
	}

	*val = scale;

data_unlock:
	FUNC2(&data->lock);

	return ret;
}