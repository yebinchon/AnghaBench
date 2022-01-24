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
struct ras_common_if {int dummy; } ;
struct ras_ih_if {struct ras_common_if head; } ;
struct TYPE_2__ {struct ras_common_if* mmhub_ras_if; struct ras_common_if* umc_ras_if; } ;
struct amdgpu_device {int /*<<< orphan*/  stolen_vga_memory; TYPE_1__ gmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_RAS_BLOCK__MMHUB ; 
 int /*<<< orphan*/  AMDGPU_RAS_BLOCK__UMC ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,struct ras_common_if*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,struct ras_common_if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,struct ras_ih_if*) ; 
 scalar_t__ FUNC8 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,struct ras_common_if*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*) ; 
 scalar_t__ FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct ras_common_if*) ; 

__attribute__((used)) static int FUNC13(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	void *stolen_vga_buf;

	if (FUNC8(adev, AMDGPU_RAS_BLOCK__UMC) &&
			adev->gmc.umc_ras_if) {
		struct ras_common_if *ras_if = adev->gmc.umc_ras_if;
		struct ras_ih_if ih_info = {
			.head = *ras_if,
		};

		/* remove fs first */
		FUNC5(adev, ras_if);
		FUNC9(adev, ras_if);
		/* remove the IH */
		FUNC7(adev, &ih_info);
		FUNC6(adev, ras_if, 0);
		FUNC12(ras_if);
	}

	if (FUNC8(adev, AMDGPU_RAS_BLOCK__MMHUB) &&
			adev->gmc.mmhub_ras_if) {
		struct ras_common_if *ras_if = adev->gmc.mmhub_ras_if;

		/* remove fs and disable ras feature */
		FUNC5(adev, ras_if);
		FUNC9(adev, ras_if);
		FUNC6(adev, ras_if, 0);
		FUNC12(ras_if);
	}

	FUNC4(adev);
	FUNC10(adev);

	if (FUNC11(adev))
		FUNC1(&adev->stolen_vga_memory, NULL, &stolen_vga_buf);

	FUNC3(adev);
	FUNC0(adev);
	FUNC2(adev);

	return 0;
}