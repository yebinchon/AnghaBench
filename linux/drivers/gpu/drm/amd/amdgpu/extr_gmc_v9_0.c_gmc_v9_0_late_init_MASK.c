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
struct TYPE_4__ {int /*<<< orphan*/  vm_fault; } ;
struct amdgpu_device {int asic_type; TYPE_2__ gmc; TYPE_1__* df_funcs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable_ecc_force_par_wr_rmw ) (struct amdgpu_device*,int) ;} ;

/* Variables and functions */
#define  CHIP_VEGA10 129 
#define  CHIP_VEGA20 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct amdgpu_device*) ; 
 int FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC10(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	bool r;

	if (!FUNC8(adev))
		FUNC3(adev);

	r = FUNC6(adev);
	if (r)
		return r;
	/* Check if ecc is available */
	if (!FUNC5(adev)) {
		switch (adev->asic_type) {
		case CHIP_VEGA10:
		case CHIP_VEGA20:
			r = FUNC1(adev);
			if (!r) {
				FUNC0("ECC is not present.\n");
				if (adev->df_funcs->enable_ecc_force_par_wr_rmw)
					adev->df_funcs->enable_ecc_force_par_wr_rmw(adev, false);
			} else {
				FUNC0("ECC is active.\n");
			}

			r = FUNC2(adev);
			if (!r) {
				FUNC0("SRAM ECC is not present.\n");
			} else {
				FUNC0("SRAM ECC is active.\n");
			}
			break;
		default:
			break;
		}
	}

	r = FUNC7(handle);
	if (r)
		return r;

	return FUNC4(adev, &adev->gmc.vm_fault, 0);
}