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
struct goodix_ts_data {int /*<<< orphan*/  firmware_loading_complete; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct goodix_ts_data*) ; 
 int FUNC2 (struct goodix_ts_data*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 

__attribute__((used)) static void FUNC4(const struct firmware *cfg, void *ctx)
{
	struct goodix_ts_data *ts = ctx;
	int error;

	if (cfg) {
		/* send device configuration to the firmware */
		error = FUNC2(ts, cfg);
		if (error)
			goto err_release_cfg;
	}

	FUNC1(ts);

err_release_cfg:
	FUNC3(cfg);
	FUNC0(&ts->firmware_loading_complete);
}