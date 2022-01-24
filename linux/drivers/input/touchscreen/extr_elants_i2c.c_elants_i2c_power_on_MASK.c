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
struct elants_data {int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  vcc33; TYPE_1__* client; int /*<<< orphan*/  vccio; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELAN_POWERON_DELAY_USEC ; 
 int /*<<< orphan*/  ELAN_RESET_DELAY_MSEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct elants_data *ts)
{
	int error;

	/*
	 * If we do not have reset gpio assume platform firmware
	 * controls regulators and does power them on for us.
	 */
	if (FUNC0(ts->reset_gpio))
		return 0;

	FUNC2(ts->reset_gpio, 1);

	error = FUNC5(ts->vcc33);
	if (error) {
		FUNC1(&ts->client->dev,
			"failed to enable vcc33 regulator: %d\n",
			error);
		goto release_reset_gpio;
	}

	error = FUNC5(ts->vccio);
	if (error) {
		FUNC1(&ts->client->dev,
			"failed to enable vccio regulator: %d\n",
			error);
		FUNC4(ts->vcc33);
		goto release_reset_gpio;
	}

	/*
	 * We need to wait a bit after powering on controller before
	 * we are allowed to release reset GPIO.
	 */
	FUNC6(ELAN_POWERON_DELAY_USEC);

release_reset_gpio:
	FUNC2(ts->reset_gpio, 0);
	if (error)
		return error;

	FUNC3(ELAN_RESET_DELAY_MSEC);

	return 0;
}