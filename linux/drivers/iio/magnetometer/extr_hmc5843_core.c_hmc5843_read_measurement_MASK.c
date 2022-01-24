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
typedef  int /*<<< orphan*/  values ;
struct hmc5843_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  HMC5843_DATA_OUT_MSB_REGS ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hmc5843_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hmc5843_data *data,
				    int idx, int *val)
{
	__be16 values[3];
	int ret;

	FUNC2(&data->lock);
	ret = FUNC1(data);
	if (ret < 0) {
		FUNC3(&data->lock);
		return ret;
	}
	ret = FUNC4(data->regmap, HMC5843_DATA_OUT_MSB_REGS,
			       values, sizeof(values));
	FUNC3(&data->lock);
	if (ret < 0)
		return ret;

	*val = FUNC5(FUNC0(values[idx]), 15);
	return IIO_VAL_INT;
}