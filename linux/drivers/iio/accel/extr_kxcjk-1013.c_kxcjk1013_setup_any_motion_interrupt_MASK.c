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
struct kxcjk1013_data {TYPE_1__* client; } ;
typedef  enum kxcjk1013_mode { ____Placeholder_kxcjk1013_mode } kxcjk1013_mode ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KXCJK1013_REG_CTRL1 ; 
 int KXCJK1013_REG_CTRL1_BIT_WUFE ; 
 int /*<<< orphan*/  KXCJK1013_REG_INT_CTRL1 ; 
 int KXCJK1013_REG_INT_CTRL1_BIT_IEN ; 
 int OPERATION ; 
 int STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct kxcjk1013_data*) ; 
 int FUNC4 (struct kxcjk1013_data*,int*) ; 
 int FUNC5 (struct kxcjk1013_data*,int) ; 

__attribute__((used)) static int FUNC6(struct kxcjk1013_data *data,
						bool status)
{
	int ret;
	enum kxcjk1013_mode store_mode;

	ret = FUNC4(data, &store_mode);
	if (ret < 0)
		return ret;

	/* This is requirement by spec to change state to STANDBY */
	ret = FUNC5(data, STANDBY);
	if (ret < 0)
		return ret;

	ret = FUNC3(data);
	if (ret < 0)
		return ret;

	ret = FUNC1(data->client, KXCJK1013_REG_INT_CTRL1);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error reading reg_int_ctrl1\n");
		return ret;
	}

	if (status)
		ret |= KXCJK1013_REG_INT_CTRL1_BIT_IEN;
	else
		ret &= ~KXCJK1013_REG_INT_CTRL1_BIT_IEN;

	ret = FUNC2(data->client, KXCJK1013_REG_INT_CTRL1,
					ret);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error writing reg_int_ctrl1\n");
		return ret;
	}

	ret = FUNC1(data->client, KXCJK1013_REG_CTRL1);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error reading reg_ctrl1\n");
		return ret;
	}

	if (status)
		ret |= KXCJK1013_REG_CTRL1_BIT_WUFE;
	else
		ret &= ~KXCJK1013_REG_CTRL1_BIT_WUFE;

	ret = FUNC2(data->client,
					KXCJK1013_REG_CTRL1, ret);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error writing reg_ctrl1\n");
		return ret;
	}

	if (store_mode == OPERATION) {
		ret = FUNC5(data, OPERATION);
		if (ret < 0)
			return ret;
	}

	return 0;
}