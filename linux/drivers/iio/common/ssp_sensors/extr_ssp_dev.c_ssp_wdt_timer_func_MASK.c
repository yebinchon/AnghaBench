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
struct timer_list {int dummy; } ;
struct ssp_data {int fw_dl_state; scalar_t__ timeout_cnt; scalar_t__ com_fail_cnt; int /*<<< orphan*/  wdt_timer; int /*<<< orphan*/  work_wdt; } ;

/* Variables and functions */
#define  SSP_FW_DL_STATE_DOWNLOADING 130 
#define  SSP_FW_DL_STATE_FAIL 129 
#define  SSP_FW_DL_STATE_SYNC 128 
 scalar_t__ SSP_LIMIT_RESET_CNT ; 
 scalar_t__ SSP_LIMIT_TIMEOUT_CNT ; 
 int /*<<< orphan*/  SSP_WDT_TIME ; 
 struct ssp_data* data ; 
 struct ssp_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 
 int /*<<< orphan*/  wdt_timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct ssp_data *data = FUNC0(data, t, wdt_timer);

	switch (data->fw_dl_state) {
	case SSP_FW_DL_STATE_FAIL:
	case SSP_FW_DL_STATE_DOWNLOADING:
	case SSP_FW_DL_STATE_SYNC:
		goto _mod;
	}

	if (data->timeout_cnt > SSP_LIMIT_TIMEOUT_CNT ||
	    data->com_fail_cnt > SSP_LIMIT_RESET_CNT)
		FUNC3(system_power_efficient_wq, &data->work_wdt);
_mod:
	FUNC1(&data->wdt_timer, jiffies + FUNC2(SSP_WDT_TIME));
}