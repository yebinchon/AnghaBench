#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bma180_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMA180_CTRL_REG0 ; 
 int /*<<< orphan*/  BMA180_DIS_WAKE_UP ; 
 int /*<<< orphan*/  BMA180_OFFSET_LSB1 ; 
 int /*<<< orphan*/  BMA180_SMP_SKIP ; 
 int FUNC0 (struct bma180_data*) ; 
 int FUNC1 (struct bma180_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bma180_data*,int) ; 
 int FUNC3 (struct bma180_data*,int) ; 
 int FUNC4 (struct bma180_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(struct bma180_data *data)
{
	int ret = FUNC0(data);

	if (ret)
		goto err;
	ret = FUNC1(data, BMA180_CTRL_REG0, BMA180_DIS_WAKE_UP, 1);
	if (ret)
		goto err;
	ret = FUNC3(data, true);
	if (ret)
		goto err;
	ret = FUNC1(data, BMA180_OFFSET_LSB1, BMA180_SMP_SKIP, 1);
	if (ret)
		goto err;
	ret = FUNC2(data, 20); /* 20 Hz */
	if (ret)
		goto err;
	ret = FUNC4(data, 2452); /* 2 G */
	if (ret)
		goto err;

	return 0;

err:
	FUNC5(&data->client->dev, "failed to config the chip\n");
	return ret;
}