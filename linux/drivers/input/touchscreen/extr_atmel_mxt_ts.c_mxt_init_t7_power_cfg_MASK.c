#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int active; int idle; } ;
struct mxt_data {TYPE_2__ t7_cfg; int /*<<< orphan*/  T7_address; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXT_POWER_CFG_RUN ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct mxt_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mxt_data*) ; 

__attribute__((used)) static int FUNC4(struct mxt_data *data)
{
	struct device *dev = &data->client->dev;
	int error;
	bool retry = false;

recheck:
	error = FUNC0(data->client, data->T7_address,
				sizeof(data->t7_cfg), &data->t7_cfg);
	if (error)
		return error;

	if (data->t7_cfg.active == 0 || data->t7_cfg.idle == 0) {
		if (!retry) {
			FUNC1(dev, "T7 cfg zero, resetting\n");
			FUNC3(data);
			retry = true;
			goto recheck;
		} else {
			FUNC1(dev, "T7 cfg zero after reset, overriding\n");
			data->t7_cfg.active = 20;
			data->t7_cfg.idle = 100;
			return FUNC2(data, MXT_POWER_CFG_RUN);
		}
	}

	FUNC1(dev, "Initialized power cfg: ACTV %d, IDLE %d\n",
		data->t7_cfg.active, data->t7_cfg.idle);
	return 0;
}