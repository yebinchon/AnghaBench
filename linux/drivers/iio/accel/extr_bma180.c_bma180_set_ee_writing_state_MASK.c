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
 int /*<<< orphan*/  BMA180_EE_W ; 
 int FUNC0 (struct bma180_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC2(struct bma180_data *data, bool state)
{
	int ret = FUNC0(data, BMA180_CTRL_REG0, BMA180_EE_W, state);

	if (ret)
		FUNC1(&data->client->dev,
			"failed to set ee writing state %d\n", state);

	return ret;
}