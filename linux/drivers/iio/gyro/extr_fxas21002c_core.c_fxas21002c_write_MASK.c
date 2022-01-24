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
struct fxas21002c_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  prev_mode; int /*<<< orphan*/ * regmap_fields; } ;
typedef  enum fxas21002c_fields { ____Placeholder_fxas21002c_fields } fxas21002c_fields ;

/* Variables and functions */
 int /*<<< orphan*/  FXAS21002C_MODE_READY ; 
 int FUNC0 (struct fxas21002c_data*) ; 
 int FUNC1 (struct fxas21002c_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct fxas21002c_data *data,
			    enum fxas21002c_fields field, int bits)
{
	int actual_mode;
	int ret;

	FUNC2(&data->lock);

	actual_mode = FUNC0(data);
	if (actual_mode < 0) {
		ret = actual_mode;
		goto out_unlock;
	}

	ret = FUNC1(data, FXAS21002C_MODE_READY);
	if (ret < 0)
		goto out_unlock;

	ret = FUNC4(data->regmap_fields[field], bits);
	if (ret < 0)
		goto out_unlock;

	ret = FUNC1(data, data->prev_mode);

out_unlock:
	FUNC3(&data->lock);

	return ret;
}