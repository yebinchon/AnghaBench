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
struct raydium_data {int /*<<< orphan*/  reset_gpio; TYPE_1__* client; int /*<<< orphan*/  avdd; int /*<<< orphan*/  vccio; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RM_POWERON_DELAY_USEC ; 
 int /*<<< orphan*/  RM_RESET_DELAY_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct raydium_data *ts)
{
	int error;

	if (!ts->reset_gpio)
		return 0;

	FUNC1(ts->reset_gpio, 1);

	error = FUNC4(ts->avdd);
	if (error) {
		FUNC0(&ts->client->dev,
			"failed to enable avdd regulator: %d\n", error);
		goto release_reset_gpio;
	}

	error = FUNC4(ts->vccio);
	if (error) {
		FUNC3(ts->avdd);
		FUNC0(&ts->client->dev,
			"failed to enable vccio regulator: %d\n", error);
		goto release_reset_gpio;
	}

	FUNC5(RM_POWERON_DELAY_USEC);

release_reset_gpio:
	FUNC1(ts->reset_gpio, 0);

	if (error)
		return error;

	FUNC2(RM_RESET_DELAY_MSEC);

	return 0;
}