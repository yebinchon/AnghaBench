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
struct hideep_ts {TYPE_1__* client; int /*<<< orphan*/  reg; scalar_t__ reset_gpio; int /*<<< orphan*/  vcc_vid; int /*<<< orphan*/  vcc_vdd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIDEEP_RESET_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct hideep_ts *ts)
{
	int error = 0;

	error = FUNC4(ts->vcc_vdd);
	if (error)
		FUNC0(&ts->client->dev,
			"failed to enable 'vdd' regulator: %d", error);

	FUNC5(999, 1000);

	error = FUNC4(ts->vcc_vid);
	if (error)
		FUNC0(&ts->client->dev,
			"failed to enable 'vcc_vid' regulator: %d",
			error);

	FUNC2(30);

	if (ts->reset_gpio) {
		FUNC1(ts->reset_gpio, 0);
	} else {
		error = FUNC3(ts->reg, HIDEEP_RESET_CMD, 0x01);
		if (error)
			FUNC0(&ts->client->dev,
				"failed to send 'reset' command: %d\n", error);
	}

	FUNC2(50);

	return error;
}