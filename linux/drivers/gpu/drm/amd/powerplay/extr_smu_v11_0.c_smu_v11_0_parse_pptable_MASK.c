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
struct smu_table_context {scalar_t__ driver_pptable; struct smu_table* tables; } ;
struct smu_table {int /*<<< orphan*/  size; } ;
struct smu_context {struct smu_table_context smu_table; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t SMU_TABLE_PPTABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct smu_context*) ; 
 int FUNC2 (struct smu_context*) ; 

__attribute__((used)) static int FUNC3(struct smu_context *smu)
{
	int ret;

	struct smu_table_context *table_context = &smu->smu_table;
	struct smu_table *table = &table_context->tables[SMU_TABLE_PPTABLE];

	if (table_context->driver_pptable)
		return -EINVAL;

	table_context->driver_pptable = FUNC0(table->size, GFP_KERNEL);

	if (!table_context->driver_pptable)
		return -ENOMEM;

	ret = FUNC2(smu);
	if (ret)
		return -EINVAL;

	ret = FUNC1(smu);

	return ret;
}