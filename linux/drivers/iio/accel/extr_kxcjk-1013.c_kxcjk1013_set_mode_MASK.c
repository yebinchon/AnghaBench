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
 int KXCJK1013_REG_CTRL1_BIT_PC1 ; 
 int STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct kxcjk1013_data *data,
			      enum kxcjk1013_mode mode)
{
	int ret;

	ret = FUNC1(data->client, KXCJK1013_REG_CTRL1);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error reading reg_ctrl1\n");
		return ret;
	}

	if (mode == STANDBY)
		ret &= ~KXCJK1013_REG_CTRL1_BIT_PC1;
	else
		ret |= KXCJK1013_REG_CTRL1_BIT_PC1;

	ret = FUNC2(data->client,
					KXCJK1013_REG_CTRL1, ret);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error writing reg_ctrl1\n");
		return ret;
	}

	return 0;
}