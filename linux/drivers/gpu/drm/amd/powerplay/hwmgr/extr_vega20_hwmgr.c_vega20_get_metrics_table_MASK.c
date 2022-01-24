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
typedef  int /*<<< orphan*/  uint8_t ;
struct vega20_hwmgr {int /*<<< orphan*/  metrics_table; scalar_t__ metrics_time; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
typedef  int /*<<< orphan*/  SmuMetrics_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  TABLE_SMU_METRICS ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct pp_hwmgr *hwmgr, SmuMetrics_t *metrics_table)
{
	struct vega20_hwmgr *data =
			(struct vega20_hwmgr *)(hwmgr->backend);
	int ret = 0;

	if (!data->metrics_time || FUNC3(jiffies, data->metrics_time + HZ / 2)) {
		ret = FUNC2(hwmgr, (uint8_t *)metrics_table,
				TABLE_SMU_METRICS, true);
		if (ret) {
			FUNC1("Failed to export SMU metrics table!\n");
			return ret;
		}
		FUNC0(&data->metrics_table, metrics_table, sizeof(SmuMetrics_t));
		data->metrics_time = jiffies;
	} else
		FUNC0(metrics_table, &data->metrics_table, sizeof(SmuMetrics_t));

	return ret;
}