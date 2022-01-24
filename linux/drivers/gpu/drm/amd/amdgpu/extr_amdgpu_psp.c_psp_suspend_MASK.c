#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int initialized; } ;
struct psp_context {TYPE_2__* adev; TYPE_5__ xgmi_context; } ;
struct TYPE_8__ {int num_physical_nodes; } ;
struct TYPE_9__ {TYPE_3__ xgmi; } ;
struct amdgpu_device {TYPE_4__ gmc; struct psp_context psp; } ;
struct TYPE_6__ {scalar_t__ ta_fw; } ;
struct TYPE_7__ {TYPE_1__ psp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PSP_RING_TYPE__KM ; 
 int FUNC1 (struct psp_context*) ; 
 int FUNC2 (struct psp_context*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct psp_context*) ; 

__attribute__((used)) static int FUNC4(void *handle)
{
	int ret;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct psp_context *psp = &adev->psp;

	if (adev->gmc.xgmi.num_physical_nodes > 1 &&
	    psp->xgmi_context.initialized == 1) {
		ret = FUNC3(psp);
		if (ret) {
			FUNC0("Failed to terminate xgmi ta\n");
			return ret;
		}
	}

	if (psp->adev->psp.ta_fw) {
		ret = FUNC1(psp);
		if (ret) {
			FUNC0("Failed to terminate ras ta\n");
			return ret;
		}
	}

	ret = FUNC2(psp, PSP_RING_TYPE__KM);
	if (ret) {
		FUNC0("PSP ring stop failed\n");
		return ret;
	}

	return 0;
}