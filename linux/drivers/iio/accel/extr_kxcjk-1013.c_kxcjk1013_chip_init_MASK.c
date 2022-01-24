#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kxcjk1013_data {int odr_bits; int /*<<< orphan*/  wake_thres; TYPE_1__* client; scalar_t__ active_high_intr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KXCJK1013_DEFAULT_WAKE_THRES ; 
 int /*<<< orphan*/  KXCJK1013_RANGE_4G ; 
 int /*<<< orphan*/  KXCJK1013_REG_CTRL1 ; 
 int KXCJK1013_REG_CTRL1_BIT_RES ; 
 int /*<<< orphan*/  KXCJK1013_REG_DATA_CTRL ; 
 int /*<<< orphan*/  KXCJK1013_REG_INT_CTRL1 ; 
 int KXCJK1013_REG_INT_CTRL1_BIT_IEA ; 
 int /*<<< orphan*/  KXCJK1013_REG_WHO_AM_I ; 
 int /*<<< orphan*/  OPERATION ; 
 int /*<<< orphan*/  STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct kxcjk1013_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct kxcjk1013_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct kxcjk1013_data *data)
{
	int ret;

	ret = FUNC2(data->client, KXCJK1013_REG_WHO_AM_I);
	if (ret < 0) {
		FUNC1(&data->client->dev, "Error reading who_am_i\n");
		return ret;
	}

	FUNC0(&data->client->dev, "KXCJK1013 Chip Id %x\n", ret);

	ret = FUNC4(data, STANDBY);
	if (ret < 0)
		return ret;

	ret = FUNC2(data->client, KXCJK1013_REG_CTRL1);
	if (ret < 0) {
		FUNC1(&data->client->dev, "Error reading reg_ctrl1\n");
		return ret;
	}

	/* Set 12 bit mode */
	ret |= KXCJK1013_REG_CTRL1_BIT_RES;

	ret = FUNC3(data->client, KXCJK1013_REG_CTRL1,
					ret);
	if (ret < 0) {
		FUNC1(&data->client->dev, "Error reading reg_ctrl\n");
		return ret;
	}

	/* Setting range to 4G */
	ret = FUNC5(data, KXCJK1013_RANGE_4G);
	if (ret < 0)
		return ret;

	ret = FUNC2(data->client, KXCJK1013_REG_DATA_CTRL);
	if (ret < 0) {
		FUNC1(&data->client->dev, "Error reading reg_data_ctrl\n");
		return ret;
	}

	data->odr_bits = ret;

	/* Set up INT polarity */
	ret = FUNC2(data->client, KXCJK1013_REG_INT_CTRL1);
	if (ret < 0) {
		FUNC1(&data->client->dev, "Error reading reg_int_ctrl1\n");
		return ret;
	}

	if (data->active_high_intr)
		ret |= KXCJK1013_REG_INT_CTRL1_BIT_IEA;
	else
		ret &= ~KXCJK1013_REG_INT_CTRL1_BIT_IEA;

	ret = FUNC3(data->client, KXCJK1013_REG_INT_CTRL1,
					ret);
	if (ret < 0) {
		FUNC1(&data->client->dev, "Error writing reg_int_ctrl1\n");
		return ret;
	}

	ret = FUNC4(data, OPERATION);
	if (ret < 0)
		return ret;

	data->wake_thres = KXCJK1013_DEFAULT_WAKE_THRES;

	return 0;
}