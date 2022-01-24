#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct smu_table_context {size_t power_play_table_size; scalar_t__ hardcode_pptable; scalar_t__ power_play_table; } ;
struct smu_context {int /*<<< orphan*/  mutex; int /*<<< orphan*/  pm_enabled; struct smu_table_context smu_table; } ;
struct TYPE_2__ {size_t usStructureSize; } ;
typedef  TYPE_1__ ATOM_COMMON_TABLE_HEADER ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (struct smu_context*) ; 

int FUNC7(struct smu_context *smu,  void *buf, size_t size)
{
	struct smu_table_context *smu_table = &smu->smu_table;
	ATOM_COMMON_TABLE_HEADER *header = (ATOM_COMMON_TABLE_HEADER *)buf;
	int ret = 0;

	if (!smu->pm_enabled)
		return -EINVAL;
	if (header->usStructureSize != size) {
		FUNC4("pp table size not matched !\n");
		return -EIO;
	}

	FUNC2(&smu->mutex);
	if (!smu_table->hardcode_pptable)
		smu_table->hardcode_pptable = FUNC0(size, GFP_KERNEL);
	if (!smu_table->hardcode_pptable) {
		ret = -ENOMEM;
		goto failed;
	}

	FUNC1(smu_table->hardcode_pptable, buf, size);
	smu_table->power_play_table = smu_table->hardcode_pptable;
	smu_table->power_play_table_size = size;
	FUNC3(&smu->mutex);

	ret = FUNC6(smu);
	if (ret)
		FUNC5("smu reset failed, ret = %d\n", ret);

	return ret;

failed:
	FUNC3(&smu->mutex);
	return ret;
}