#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {void* config; int /*<<< orphan*/  sleepthd; int /*<<< orphan*/  sleepmax; int /*<<< orphan*/  sleepmin; } ;
struct mma9553_data {TYPE_2__* client; TYPE_1__ conf; int /*<<< orphan*/  gpio_bitnum; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMA9551_APPID_PEDOMETER ; 
 int /*<<< orphan*/  MMA9551_RSC_PED ; 
 int /*<<< orphan*/  MMA9553_DEFAULT_SLEEPMAX ; 
 int /*<<< orphan*/  MMA9553_DEFAULT_SLEEPMIN ; 
 int /*<<< orphan*/  MMA9553_DEFAULT_SLEEPTHD ; 
 int /*<<< orphan*/  MMA9553_MASK_CONF_ACT_DBCNTM ; 
 int /*<<< orphan*/  MMA9553_MASK_CONF_CONFIG ; 
 int /*<<< orphan*/  MMA9553_MAX_BITNUM ; 
 int /*<<< orphan*/  MMA9553_REG_CONF_SLEEPMIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mma9553_data*) ; 
 void* FUNC7 (void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mma9553_data *data)
{
	int ret;

	ret = FUNC3(data->client);
	if (ret)
		return ret;

	/*
	 * Read all the pedometer configuration registers. This is used as
	 * a device identification command to differentiate the MMA9553L
	 * from the MMA9550L.
	 */
	ret = FUNC2(data->client, MMA9551_APPID_PEDOMETER,
					MMA9553_REG_CONF_SLEEPMIN,
					sizeof(data->conf) / sizeof(u16),
					(u16 *)&data->conf);
	if (ret < 0) {
		FUNC0(&data->client->dev,
			"failed to read configuration registers\n");
		return ret;
	}

	/* Reset GPIO */
	data->gpio_bitnum = MMA9553_MAX_BITNUM;
	ret = FUNC6(data);
	if (ret < 0)
		return ret;

	ret = FUNC1(data->client, MMA9551_RSC_PED);
	if (ret < 0)
		return ret;

	/* Init config registers */
	data->conf.sleepmin = MMA9553_DEFAULT_SLEEPMIN;
	data->conf.sleepmax = MMA9553_DEFAULT_SLEEPMAX;
	data->conf.sleepthd = MMA9553_DEFAULT_SLEEPTHD;
	data->conf.config = FUNC7(data->conf.config, 1,
					     MMA9553_MASK_CONF_CONFIG);
	/*
	 * Clear the activity debounce counter when the activity level changes,
	 * so that the confidence level applies for any activity level.
	 */
	data->conf.config = FUNC7(data->conf.config, 1,
					     MMA9553_MASK_CONF_ACT_DBCNTM);
	ret = FUNC5(data->client, MMA9551_APPID_PEDOMETER,
					 MMA9553_REG_CONF_SLEEPMIN,
					 sizeof(data->conf) / sizeof(u16),
					 (u16 *)&data->conf);
	if (ret < 0) {
		FUNC0(&data->client->dev,
			"failed to write configuration registers\n");
		return ret;
	}

	return FUNC4(data->client, true);
}