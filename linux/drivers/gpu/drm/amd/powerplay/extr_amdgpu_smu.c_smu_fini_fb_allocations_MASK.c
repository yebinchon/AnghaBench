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
typedef  scalar_t__ uint32_t ;
struct smu_table_context {scalar_t__ table_count; struct smu_table* tables; } ;
struct smu_table {scalar_t__ size; int /*<<< orphan*/  cpu_addr; int /*<<< orphan*/  mc_address; int /*<<< orphan*/  bo; } ;
struct smu_context {struct smu_table_context smu_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct smu_context *smu)
{
	struct smu_table_context *smu_table = &smu->smu_table;
	struct smu_table *tables = smu_table->tables;
	uint32_t table_count = smu_table->table_count;
	uint32_t i = 0;

	if (table_count == 0 || tables == NULL)
		return 0;

	for (i = 0 ; i < table_count; i++) {
		if (tables[i].size == 0)
			continue;
		FUNC0(&tables[i].bo,
				      &tables[i].mc_address,
				      &tables[i].cpu_addr);
	}

	return 0;
}