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
typedef  int u8 ;
struct gen6_interval_setting {void* lp2_interval; void* lp1_interval; void* active_interval; } ;
struct cyapa {int dummy; } ;
typedef  int /*<<< orphan*/  resp_data ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int EINVAL ; 
 int GEN6_GET_POWER_MODE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int FUNC1 (struct cyapa*,int*,int,int*,int*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cyapa_sort_tsg_pip_app_resp_data ; 
 void* FUNC2 (int*) ; 

__attribute__((used)) static int FUNC3(struct cyapa *cyapa,
		struct gen6_interval_setting *interval_setting)
{
	u8 cmd[] = { 0x04, 0x00, 0x05, 0x00, 0x2f, 0x00,
		     GEN6_GET_POWER_MODE_INTERVAL };
	u8 resp_data[11];
	int resp_len;
	int error;

	resp_len = sizeof(resp_data);
	error = FUNC1(cyapa, cmd, sizeof(cmd),
			resp_data, &resp_len,
			500, cyapa_sort_tsg_pip_app_resp_data, false);
	if (error ||
		!FUNC0(resp_data, GEN6_GET_POWER_MODE_INTERVAL))
		return error < 0 ? error : -EINVAL;

	interval_setting->active_interval = FUNC2(&resp_data[5]);
	interval_setting->lp1_interval = FUNC2(&resp_data[7]);
	interval_setting->lp2_interval = FUNC2(&resp_data[9]);

	return 0;
}