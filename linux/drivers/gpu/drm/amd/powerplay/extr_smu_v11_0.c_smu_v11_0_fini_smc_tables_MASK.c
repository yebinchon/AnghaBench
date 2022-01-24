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
struct smu_table_context {scalar_t__ table_count; scalar_t__ metrics_time; int /*<<< orphan*/ * metrics_table; int /*<<< orphan*/ * tables; } ;
struct smu_context {struct smu_table_context smu_table; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct smu_context*) ; 

__attribute__((used)) static int FUNC2(struct smu_context *smu)
{
	struct smu_table_context *smu_table = &smu->smu_table;
	int ret = 0;

	if (!smu_table->tables || smu_table->table_count == 0)
		return -EINVAL;

	FUNC0(smu_table->tables);
	FUNC0(smu_table->metrics_table);
	smu_table->tables = NULL;
	smu_table->table_count = 0;
	smu_table->metrics_table = NULL;
	smu_table->metrics_time = 0;

	ret = FUNC1(smu);
	if (ret)
		return ret;
	return 0;
}