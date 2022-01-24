#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* entry; } ;
struct vega20_smumgr {TYPE_1__ smu_tables; } ;
struct pp_hwmgr {struct vega20_smumgr* smu_backend; scalar_t__ adev; int /*<<< orphan*/  device; } ;
struct cgs_firmware_info {int /*<<< orphan*/  kptr; int /*<<< orphan*/  member_0; } ;
struct amdgpu_device {int dummy; } ;
typedef  int /*<<< orphan*/  Watermarks_t ;
struct TYPE_4__ {int version; int size; int /*<<< orphan*/  table; int /*<<< orphan*/  mc_addr; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  SmuMetrics_t ;
typedef  int /*<<< orphan*/  PPTable_t ;
typedef  int /*<<< orphan*/  OverDriveTable_t ;
typedef  int /*<<< orphan*/  DpmActivityMonitorCoeffInt_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t TABLE_ACTIVITY_MONITOR_COEFF ; 
 size_t TABLE_OVERDRIVE ; 
 size_t TABLE_PMSTATUSLOG ; 
 size_t TABLE_PPTABLE ; 
 size_t TABLE_SMU_METRICS ; 
 size_t TABLE_WATERMARKS ; 
 int /*<<< orphan*/  UCODE_ID_SMU ; 
 int FUNC0 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cgs_firmware_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct vega20_smumgr*) ; 
 struct vega20_smumgr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pp_hwmgr *hwmgr)
{
	struct vega20_smumgr *priv;
	unsigned long tools_size = 0x19000;
	int ret = 0;

	struct cgs_firmware_info info = {0};

	ret = FUNC2(hwmgr->device,
				FUNC5(UCODE_ID_SMU),
				&info);
	if (ret || !info.kptr)
		return -EINVAL;

	priv = FUNC4(sizeof(struct vega20_smumgr), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	hwmgr->smu_backend = priv;

	/* allocate space for pptable */
	ret = FUNC0((struct amdgpu_device *)hwmgr->adev,
			sizeof(PPTable_t),
			PAGE_SIZE,
			AMDGPU_GEM_DOMAIN_VRAM,
			&priv->smu_tables.entry[TABLE_PPTABLE].handle,
			&priv->smu_tables.entry[TABLE_PPTABLE].mc_addr,
			&priv->smu_tables.entry[TABLE_PPTABLE].table);
	if (ret)
		goto free_backend;

	priv->smu_tables.entry[TABLE_PPTABLE].version = 0x01;
	priv->smu_tables.entry[TABLE_PPTABLE].size = sizeof(PPTable_t);

	/* allocate space for watermarks table */
	ret = FUNC0((struct amdgpu_device *)hwmgr->adev,
			sizeof(Watermarks_t),
			PAGE_SIZE,
			AMDGPU_GEM_DOMAIN_VRAM,
			&priv->smu_tables.entry[TABLE_WATERMARKS].handle,
			&priv->smu_tables.entry[TABLE_WATERMARKS].mc_addr,
			&priv->smu_tables.entry[TABLE_WATERMARKS].table);
	if (ret)
		goto err0;

	priv->smu_tables.entry[TABLE_WATERMARKS].version = 0x01;
	priv->smu_tables.entry[TABLE_WATERMARKS].size = sizeof(Watermarks_t);

	/* allocate space for pmstatuslog table */
	ret = FUNC0((struct amdgpu_device *)hwmgr->adev,
			tools_size,
			PAGE_SIZE,
			AMDGPU_GEM_DOMAIN_VRAM,
			&priv->smu_tables.entry[TABLE_PMSTATUSLOG].handle,
			&priv->smu_tables.entry[TABLE_PMSTATUSLOG].mc_addr,
			&priv->smu_tables.entry[TABLE_PMSTATUSLOG].table);
	if (ret)
		goto err1;

	priv->smu_tables.entry[TABLE_PMSTATUSLOG].version = 0x01;
	priv->smu_tables.entry[TABLE_PMSTATUSLOG].size = tools_size;

	/* allocate space for OverDrive table */
	ret = FUNC0((struct amdgpu_device *)hwmgr->adev,
			sizeof(OverDriveTable_t),
			PAGE_SIZE,
			AMDGPU_GEM_DOMAIN_VRAM,
			&priv->smu_tables.entry[TABLE_OVERDRIVE].handle,
			&priv->smu_tables.entry[TABLE_OVERDRIVE].mc_addr,
			&priv->smu_tables.entry[TABLE_OVERDRIVE].table);
	if (ret)
		goto err2;

	priv->smu_tables.entry[TABLE_OVERDRIVE].version = 0x01;
	priv->smu_tables.entry[TABLE_OVERDRIVE].size = sizeof(OverDriveTable_t);

	/* allocate space for SmuMetrics table */
	ret = FUNC0((struct amdgpu_device *)hwmgr->adev,
			sizeof(SmuMetrics_t),
			PAGE_SIZE,
			AMDGPU_GEM_DOMAIN_VRAM,
			&priv->smu_tables.entry[TABLE_SMU_METRICS].handle,
			&priv->smu_tables.entry[TABLE_SMU_METRICS].mc_addr,
			&priv->smu_tables.entry[TABLE_SMU_METRICS].table);
	if (ret)
		goto err3;

	priv->smu_tables.entry[TABLE_SMU_METRICS].version = 0x01;
	priv->smu_tables.entry[TABLE_SMU_METRICS].size = sizeof(SmuMetrics_t);

	/* allocate space for ActivityMonitor table */
	ret = FUNC0((struct amdgpu_device *)hwmgr->adev,
			sizeof(DpmActivityMonitorCoeffInt_t),
			PAGE_SIZE,
			AMDGPU_GEM_DOMAIN_VRAM,
			&priv->smu_tables.entry[TABLE_ACTIVITY_MONITOR_COEFF].handle,
			&priv->smu_tables.entry[TABLE_ACTIVITY_MONITOR_COEFF].mc_addr,
			&priv->smu_tables.entry[TABLE_ACTIVITY_MONITOR_COEFF].table);
	if (ret)
		goto err4;

	priv->smu_tables.entry[TABLE_ACTIVITY_MONITOR_COEFF].version = 0x01;
	priv->smu_tables.entry[TABLE_ACTIVITY_MONITOR_COEFF].size = sizeof(DpmActivityMonitorCoeffInt_t);

	return 0;

err4:
	FUNC1(&priv->smu_tables.entry[TABLE_SMU_METRICS].handle,
			&priv->smu_tables.entry[TABLE_SMU_METRICS].mc_addr,
			&priv->smu_tables.entry[TABLE_SMU_METRICS].table);
err3:
	FUNC1(&priv->smu_tables.entry[TABLE_OVERDRIVE].handle,
			&priv->smu_tables.entry[TABLE_OVERDRIVE].mc_addr,
			&priv->smu_tables.entry[TABLE_OVERDRIVE].table);
err2:
	FUNC1(&priv->smu_tables.entry[TABLE_PMSTATUSLOG].handle,
			&priv->smu_tables.entry[TABLE_PMSTATUSLOG].mc_addr,
			&priv->smu_tables.entry[TABLE_PMSTATUSLOG].table);
err1:
	FUNC1(&priv->smu_tables.entry[TABLE_WATERMARKS].handle,
			&priv->smu_tables.entry[TABLE_WATERMARKS].mc_addr,
			&priv->smu_tables.entry[TABLE_WATERMARKS].table);
err0:
	FUNC1(&priv->smu_tables.entry[TABLE_PPTABLE].handle,
			&priv->smu_tables.entry[TABLE_PPTABLE].mc_addr,
			&priv->smu_tables.entry[TABLE_PPTABLE].table);
free_backend:
	FUNC3(hwmgr->smu_backend);

	return -EINVAL;
}