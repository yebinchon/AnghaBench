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
struct goodix_ts_data {TYPE_2__* client; TYPE_1__* chip; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  config_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct goodix_ts_data*,struct firmware const*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct goodix_ts_data *ts,
			   const struct firmware *cfg)
{
	int error;

	error = FUNC2(ts, cfg);
	if (error)
		return error;

	error = FUNC3(ts->client, ts->chip->config_addr, cfg->data,
				 cfg->size);
	if (error) {
		FUNC1(&ts->client->dev, "Failed to write config data: %d",
			error);
		return error;
	}
	FUNC0(&ts->client->dev, "Config sent successfully.");

	/* Let the firmware reconfigure itself, so sleep for 10ms */
	FUNC4(10000, 11000);

	return 0;
}