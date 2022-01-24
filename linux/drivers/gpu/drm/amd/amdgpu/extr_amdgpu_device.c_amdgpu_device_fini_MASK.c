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
struct TYPE_4__ {int /*<<< orphan*/ * gpu_info_fw; } ;
struct TYPE_3__ {scalar_t__ mode_config_initialized; } ;
struct amdgpu_device {int shutdown; int accel_working; int flags; scalar_t__ asic_type; int /*<<< orphan*/  dev; int /*<<< orphan*/ * rmmio; int /*<<< orphan*/ * rio_mem; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * bios; int /*<<< orphan*/  delayed_init_work; TYPE_2__ firmware; int /*<<< orphan*/  ddev; TYPE_1__ mode_info; } ;

/* Variables and functions */
 int AMD_IS_PX ; 
 scalar_t__ CHIP_NAVI10 ; 
 int /*<<< orphan*/  CONFIG_PERF_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int FUNC8 (struct amdgpu_device*) ; 
 scalar_t__ amdgpu_discovery ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*) ; 
 int amdgpu_emu_mode ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct amdgpu_device*) ; 
 scalar_t__ FUNC17 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_pcie_replay_count ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 

void FUNC31(struct amdgpu_device *adev)
{
	int r;

	FUNC0("amdgpu: finishing device.\n");
	adev->shutdown = true;
	/* disable all interrupts */
	FUNC13(adev);
	if (adev->mode_info.mode_config_initialized){
		if (!FUNC7(adev))
			FUNC22(adev->ddev);
		else
			FUNC21(adev->ddev);
	}
	FUNC11(adev);
	FUNC14(adev);
	FUNC10(adev);
	r = FUNC8(adev);
	if (adev->firmware.gpu_info_fw) {
		FUNC27(adev->firmware.gpu_info_fw);
		adev->firmware.gpu_info_fw = NULL;
	}
	adev->accel_working = false;
	FUNC19(&adev->delayed_init_work);
	/* free i2c buses */
	if (!FUNC7(adev))
		FUNC12(adev);

	if (amdgpu_emu_mode != 1)
		FUNC3(adev);

	FUNC24(adev->bios);
	adev->bios = NULL;
	if (!FUNC26(adev->pdev))
		FUNC30(adev->pdev);
	if (adev->flags & AMD_IS_PX)
		FUNC29(adev->dev);
	FUNC28(adev->pdev, NULL, NULL, NULL);
	if (adev->rio_mem)
		FUNC25(adev->pdev, adev->rio_mem);
	adev->rio_mem = NULL;
	FUNC23(adev->rmmio);
	adev->rmmio = NULL;
	FUNC6(adev);
	if (FUNC17(adev) && FUNC2(adev))
		FUNC15(adev);

	FUNC5(adev);
	FUNC20(adev->dev, &dev_attr_pcie_replay_count);
	FUNC18(adev);
	if (FUNC1(CONFIG_PERF_EVENTS))
		FUNC16(adev);
	FUNC4(adev);
	if (amdgpu_discovery && adev->asic_type >= CHIP_NAVI10)
		FUNC9(adev);
}