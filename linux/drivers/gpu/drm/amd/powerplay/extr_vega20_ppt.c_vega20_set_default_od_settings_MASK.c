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
struct smu_table_context {scalar_t__ overdrive_table; } ;
struct smu_context {struct smu_table_context smu_table; } ;
typedef  int /*<<< orphan*/  OverDriveTable_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SMU_TABLE_OVERDRIVE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC3 (struct smu_context*) ; 

__attribute__((used)) static int FUNC4(struct smu_context *smu,
					  bool initialize)
{
	struct smu_table_context *table_context = &smu->smu_table;
	int ret;

	if (initialize) {
		if (table_context->overdrive_table)
			return -EINVAL;

		table_context->overdrive_table = FUNC0(sizeof(OverDriveTable_t), GFP_KERNEL);

		if (!table_context->overdrive_table)
			return -ENOMEM;

		ret = FUNC2(smu, SMU_TABLE_OVERDRIVE, 0,
				       table_context->overdrive_table, false);
		if (ret) {
			FUNC1("Failed to export over drive table!\n");
			return ret;
		}

		ret = FUNC3(smu);
		if (ret)
			return ret;
	}

	ret = FUNC2(smu, SMU_TABLE_OVERDRIVE, 0,
			       table_context->overdrive_table, true);
	if (ret) {
		FUNC1("Failed to import over drive table!\n");
		return ret;
	}

	return 0;
}