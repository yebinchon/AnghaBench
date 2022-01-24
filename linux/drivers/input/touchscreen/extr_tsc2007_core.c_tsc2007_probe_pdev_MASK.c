#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tsc2007_platform_data {scalar_t__ x_plate_ohms; int /*<<< orphan*/  fuzzz; int /*<<< orphan*/  fuzzy; int /*<<< orphan*/  fuzzx; int /*<<< orphan*/  clear_penirq; int /*<<< orphan*/  get_pendown_state; scalar_t__ poll_period; scalar_t__ max_rt; int /*<<< orphan*/  model; } ;
struct tsc2007 {scalar_t__ x_plate_ohms; int /*<<< orphan*/  fuzzz; int /*<<< orphan*/  fuzzy; int /*<<< orphan*/  fuzzx; int /*<<< orphan*/  clear_penirq; int /*<<< orphan*/  get_pendown_state; int /*<<< orphan*/  poll_period; int /*<<< orphan*/  max_rt; int /*<<< orphan*/  model; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAX_12BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, struct tsc2007 *ts,
			      const struct tsc2007_platform_data *pdata,
			      const struct i2c_device_id *id)
{
	ts->model             = pdata->model;
	ts->x_plate_ohms      = pdata->x_plate_ohms;
	ts->max_rt            = pdata->max_rt ? : MAX_12BIT;
	ts->poll_period       = FUNC1(pdata->poll_period ? : 1);
	ts->get_pendown_state = pdata->get_pendown_state;
	ts->clear_penirq      = pdata->clear_penirq;
	ts->fuzzx             = pdata->fuzzx;
	ts->fuzzy             = pdata->fuzzy;
	ts->fuzzz             = pdata->fuzzz;

	if (pdata->x_plate_ohms == 0) {
		FUNC0(&client->dev, "x_plate_ohms is not set up in platform data");
		return -EINVAL;
	}

	return 0;
}