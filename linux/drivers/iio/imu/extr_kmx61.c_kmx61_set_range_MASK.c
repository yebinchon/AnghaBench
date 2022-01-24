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
typedef  int u8 ;
struct kmx61_data {int range; TYPE_1__* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KMX61_REG_CTRL1 ; 
 int KMX61_REG_CTRL1_GSEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct kmx61_data *data, u8 range)
{
	int ret;

	ret = FUNC1(data->client, KMX61_REG_CTRL1);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error reading reg_ctrl1\n");
		return ret;
	}

	ret &= ~KMX61_REG_CTRL1_GSEL_MASK;
	ret |= range & KMX61_REG_CTRL1_GSEL_MASK;

	ret = FUNC2(data->client, KMX61_REG_CTRL1, ret);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error writing reg_ctrl1\n");
		return ret;
	}

	data->range = range;

	return 0;
}