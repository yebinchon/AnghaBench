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
struct smu_table_context {int table_count; struct smu_table* tables; } ;
struct smu_table {void* cpu_addr; int /*<<< orphan*/  size; int /*<<< orphan*/  mc_address; } ;
struct smu_context {struct amdgpu_device* adev; struct smu_table_context smu_table; } ;
struct amdgpu_device {TYPE_1__* nbio_funcs; } ;
typedef  enum smu_table_id { ____Placeholder_smu_table_id } smu_table_id ;
struct TYPE_2__ {int /*<<< orphan*/  (* hdp_flush ) (struct amdgpu_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SMU_MSG_SetDriverDramAddrHigh ; 
 int /*<<< orphan*/  SMU_MSG_SetDriverDramAddrLow ; 
 int /*<<< orphan*/  SMU_MSG_TransferTableDram2Smu ; 
 int /*<<< orphan*/  SMU_MSG_TransferTableSmu2Dram ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct smu_context*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct smu_context *smu, enum smu_table_id table_index, int argument,
		     void *table_data, bool drv2smu)
{
	struct smu_table_context *smu_table = &smu->smu_table;
	struct amdgpu_device *adev = smu->adev;
	struct smu_table *table = NULL;
	int ret = 0;
	int table_id = FUNC3(smu, table_index);

	if (!table_data || table_id >= smu_table->table_count || table_id < 0)
		return -EINVAL;

	table = &smu_table->tables[table_index];

	if (drv2smu)
		FUNC1(table->cpu_addr, table_data, table->size);

	ret = FUNC2(smu, SMU_MSG_SetDriverDramAddrHigh,
					  FUNC5(table->mc_address));
	if (ret)
		return ret;
	ret = FUNC2(smu, SMU_MSG_SetDriverDramAddrLow,
					  FUNC0(table->mc_address));
	if (ret)
		return ret;
	ret = FUNC2(smu, drv2smu ?
					  SMU_MSG_TransferTableDram2Smu :
					  SMU_MSG_TransferTableSmu2Dram,
					  table_id | ((argument & 0xFFFF) << 16));
	if (ret)
		return ret;

	/* flush hdp cache */
	adev->nbio_funcs->hdp_flush(adev, NULL);

	if (!drv2smu)
		FUNC1(table_data, table->cpu_addr, table->size);

	return ret;
}