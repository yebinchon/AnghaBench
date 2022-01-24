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
struct t7_config {int /*<<< orphan*/  idle; int /*<<< orphan*/  active; } ;
struct mxt_data {int /*<<< orphan*/  T7_address; TYPE_1__* client; struct t7_config t7_cfg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ MXT_POWER_CFG_DEEPSLEEP ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,struct t7_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mxt_data *data, u8 sleep)
{
	struct device *dev = &data->client->dev;
	int error;
	struct t7_config *new_config;
	struct t7_config deepsleep = { .active = 0, .idle = 0 };

	if (sleep == MXT_POWER_CFG_DEEPSLEEP)
		new_config = &deepsleep;
	else
		new_config = &data->t7_cfg;

	error = FUNC0(data->client, data->T7_address,
				sizeof(data->t7_cfg), new_config);
	if (error)
		return error;

	FUNC1(dev, "Set T7 ACTV:%d IDLE:%d\n",
		new_config->active, new_config->idle);

	return 0;
}