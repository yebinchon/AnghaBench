#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct psp_context {struct amdgpu_device* adev; TYPE_1__* funcs; scalar_t__ kdb_bin_size; } ;
struct TYPE_8__ {scalar_t__ ta_fw; } ;
struct TYPE_6__ {int num_physical_nodes; } ;
struct TYPE_7__ {TYPE_2__ xgmi; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; TYPE_4__ psp; TYPE_3__ gmc; int /*<<< orphan*/  in_gpu_reset; } ;
struct TYPE_5__ {int /*<<< orphan*/ * bootloader_load_kdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PSP_RING_TYPE__KM ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct psp_context*) ; 
 int FUNC4 (struct psp_context*) ; 
 int FUNC5 (struct psp_context*) ; 
 int FUNC6 (struct psp_context*) ; 
 int FUNC7 (struct psp_context*) ; 
 int FUNC8 (struct psp_context*) ; 
 int FUNC9 (struct psp_context*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct psp_context*) ; 
 int FUNC11 (struct psp_context*) ; 
 int FUNC12 (struct psp_context*) ; 

__attribute__((used)) static int FUNC13(struct psp_context *psp)
{
	struct amdgpu_device *adev = psp->adev;
	int ret;

	if (!FUNC1(adev) || !adev->in_gpu_reset) {
		if (psp->kdb_bin_size &&
		    (psp->funcs->bootloader_load_kdb != NULL)) {
			ret = FUNC5(psp);
			if (ret) {
				FUNC0("PSP load kdb failed!\n");
				return ret;
			}
		}

		ret = FUNC7(psp);
		if (ret) {
			FUNC0("PSP load sysdrv failed!\n");
			return ret;
		}

		ret = FUNC6(psp);
		if (ret) {
			FUNC0("PSP load sos failed!\n");
			return ret;
		}
	}

	ret = FUNC9(psp, PSP_RING_TYPE__KM);
	if (ret) {
		FUNC0("PSP create ring failed!\n");
		return ret;
	}

	ret = FUNC10(psp);
	if (ret) {
		FUNC0("PSP tmr init failed!\n");
		return ret;
	}

	ret = FUNC11(psp);
	if (ret) {
		FUNC0("PSP load tmr failed!\n");
		return ret;
	}

	ret = FUNC3(psp);
	if (ret) {
		FUNC0("PSP asd init failed!\n");
		return ret;
	}

	ret = FUNC4(psp);
	if (ret) {
		FUNC0("PSP load asd failed!\n");
		return ret;
	}

	if (adev->gmc.xgmi.num_physical_nodes > 1) {
		ret = FUNC12(psp);
		/* Warning the XGMI seesion initialize failure
		 * Instead of stop driver initialization
		 */
		if (ret)
			FUNC2(psp->adev->dev,
				"XGMI: Failed to initialize XGMI session\n");
	}

	if (psp->adev->psp.ta_fw) {
		ret = FUNC8(psp);
		if (ret)
			FUNC2(psp->adev->dev,
					"RAS: Failed to initialize RAS\n");
	}

	return 0;
}