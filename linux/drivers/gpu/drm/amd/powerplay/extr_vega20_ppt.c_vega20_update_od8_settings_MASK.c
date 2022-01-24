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
typedef  int /*<<< orphan*/  uint32_t ;
struct smu_table_context {int /*<<< orphan*/  overdrive_table; } ;
struct smu_context {struct smu_table_context smu_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMU_TABLE_OVERDRIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct smu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct smu_context *smu,
				      uint32_t index,
				      uint32_t value)
{
	struct smu_table_context *table_context = &smu->smu_table;
	int ret;

	ret = FUNC1(smu, SMU_TABLE_OVERDRIVE, 0,
			       table_context->overdrive_table, false);
	if (ret) {
		FUNC0("Failed to export over drive table!\n");
		return ret;
	}

	ret = FUNC2(smu, index, value);
	if (ret)
		return ret;

	ret = FUNC1(smu, SMU_TABLE_OVERDRIVE, 0,
			       table_context->overdrive_table, true);
	if (ret) {
		FUNC0("Failed to import over drive table!\n");
		return ret;
	}

	return 0;
}