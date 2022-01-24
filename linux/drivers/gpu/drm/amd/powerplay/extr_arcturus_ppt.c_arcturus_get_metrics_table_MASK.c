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
struct smu_table_context {scalar_t__ metrics_table; scalar_t__ metrics_time; } ;
struct smu_context {struct smu_table_context smu_table; } ;
typedef  int /*<<< orphan*/  SmuMetrics_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SMU_TABLE_SMU_METRICS ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct smu_context *smu,
				      SmuMetrics_t *metrics_table)
{
	struct smu_table_context *smu_table= &smu->smu_table;
	int ret = 0;

	if (!smu_table->metrics_time ||
	     FUNC3(jiffies, smu_table->metrics_time + HZ / 1000)) {
		ret = FUNC2(smu, SMU_TABLE_SMU_METRICS, 0,
				(void *)smu_table->metrics_table, false);
		if (ret) {
			FUNC1("Failed to export SMU metrics table!\n");
			return ret;
		}
		smu_table->metrics_time = jiffies;
	}

	FUNC0(metrics_table, smu_table->metrics_table, sizeof(SmuMetrics_t));

	return ret;
}