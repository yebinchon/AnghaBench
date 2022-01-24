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
struct apds9960_data {int gesture_mode_running; int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer; int /*<<< orphan*/  indio_dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDS9960_REG_GFIFO_BASE ; 
 scalar_t__ FUNC0 (struct apds9960_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct apds9960_data *data)
{
	int ret, cnt = 0;

	FUNC2(&data->lock);
	data->gesture_mode_running = 1;

	while (cnt || (cnt = FUNC0(data) > 0)) {
		ret = FUNC4(data->regmap, APDS9960_REG_GFIFO_BASE,
				      &data->buffer, 4);

		if (ret)
			goto err_read;

		FUNC1(data->indio_dev, data->buffer);
		cnt--;
	}

err_read:
	data->gesture_mode_running = 0;
	FUNC3(&data->lock);
}