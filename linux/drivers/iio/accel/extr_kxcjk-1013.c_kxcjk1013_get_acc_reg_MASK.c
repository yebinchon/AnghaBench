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
typedef  scalar_t__ u8 ;
struct kxcjk1013_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ KXCJK1013_REG_XOUT_L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char) ; 
 int FUNC1 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct kxcjk1013_data *data, int axis)
{
	u8 reg = KXCJK1013_REG_XOUT_L + axis * 2;
	int ret;

	ret = FUNC1(data->client, reg);
	if (ret < 0) {
		FUNC0(&data->client->dev,
			"failed to read accel_%c registers\n", 'x' + axis);
		return ret;
	}

	return ret;
}