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
 int /*<<< orphan*/  BMA250_INT1_DATA_MASK ; 
 int /*<<< orphan*/  BMA250_INT_MAP_REG ; 
 int FUNC0 (struct bma180_data*) ; 
 int FUNC1 (struct bma180_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bma180_data*,int) ; 
 int FUNC3 (struct bma180_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct bma180_data *data)
{
	int ret = FUNC0(data);

	if (ret)
		goto err;
	ret = FUNC2(data, 16); /* 16 Hz */
	if (ret)
		goto err;
	ret = FUNC3(data, 38344); /* 2 G */
	if (ret)
		goto err;
	ret = FUNC1(data, BMA250_INT_MAP_REG,
		BMA250_INT1_DATA_MASK, 1);
	if (ret)
		goto err;

	return 0;

err:
	FUNC4(&data->client->dev, "failed to config the chip\n");
	return ret;
}