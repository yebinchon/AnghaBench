#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kxcjk1013_data {int range; TYPE_1__* client; } ;
struct TYPE_5__ {int gsel_0; int gsel_1; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KXCJK1013_REG_CTRL1 ; 
 int KXCJK1013_REG_CTRL1_BIT_GSEL0 ; 
 int KXCJK1013_REG_CTRL1_BIT_GSEL1 ; 
 TYPE_3__* KXCJK1013_scale_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct kxcjk1013_data *data, int range_index)
{
	int ret;

	ret = FUNC1(data->client, KXCJK1013_REG_CTRL1);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error reading reg_ctrl1\n");
		return ret;
	}

	ret &= ~(KXCJK1013_REG_CTRL1_BIT_GSEL0 |
		 KXCJK1013_REG_CTRL1_BIT_GSEL1);
	ret |= (KXCJK1013_scale_table[range_index].gsel_0 << 3);
	ret |= (KXCJK1013_scale_table[range_index].gsel_1 << 4);

	ret = FUNC2(data->client,
					KXCJK1013_REG_CTRL1,
					ret);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error writing reg_ctrl1\n");
		return ret;
	}

	data->range = range_index;

	return 0;
}