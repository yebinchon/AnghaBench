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
typedef  int u8 ;
struct rm3100_data {int /*<<< orphan*/  lock; struct regmap* regmap; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IIO_VAL_INT ; 
 scalar_t__ RM3100_REG_MX2 ; 
 int /*<<< orphan*/  RM3100_REG_POLL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct regmap*,scalar_t__,int*,int) ; 
 int FUNC4 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rm3100_data*) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct rm3100_data *data, int idx, int *val)
{
	struct regmap *regmap = data->regmap;
	u8 buffer[3];
	int ret;

	FUNC1(&data->lock);
	ret = FUNC4(regmap, RM3100_REG_POLL, FUNC0(4 + idx));
	if (ret < 0)
		goto unlock_return;

	ret = FUNC5(data);
	if (ret < 0)
		goto unlock_return;

	ret = FUNC3(regmap, RM3100_REG_MX2 + 3 * idx, buffer, 3);
	if (ret < 0)
		goto unlock_return;
	FUNC2(&data->lock);

	*val = FUNC6((buffer[0] << 16) | (buffer[1] << 8) | buffer[2],
			     23);

	return IIO_VAL_INT;

unlock_return:
	FUNC2(&data->lock);
	return ret;
}