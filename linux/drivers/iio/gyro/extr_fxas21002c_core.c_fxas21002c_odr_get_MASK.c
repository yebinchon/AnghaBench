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
 size_t F_DR ; 
 int IIO_VAL_INT ; 
 int FUNC0 (struct fxas21002c_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct fxas21002c_data *data, int *odr)
{
	unsigned int odr_bits;
	int ret;

	FUNC1(&data->lock);
	ret = FUNC3(data->regmap_fields[F_DR], &odr_bits);
	if (ret < 0)
		goto data_unlock;

	*odr = FUNC0(data, odr_bits);

	ret = IIO_VAL_INT;

data_unlock:
	FUNC2(&data->lock);

	return ret;
}