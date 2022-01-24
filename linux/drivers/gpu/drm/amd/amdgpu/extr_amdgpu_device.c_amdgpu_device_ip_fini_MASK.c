#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  csa_obj; } ;
struct TYPE_8__ {int num_physical_nodes; } ;
struct TYPE_9__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {int num_ip_blocks; TYPE_7__* ip_blocks; TYPE_3__ virt; TYPE_2__ gmc; } ;
struct TYPE_13__ {int hw; int sw; int valid; int late_initialized; } ;
struct TYPE_14__ {TYPE_6__ status; TYPE_5__* version; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_4__* funcs; } ;
struct TYPE_11__ {int (* hw_fini ) (void*) ;int (* sw_fini ) (void*) ;int /*<<< orphan*/  (* late_fini ) (void*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_CG_STATE_UNGATE ; 
 scalar_t__ AMD_IP_BLOCK_TYPE_GMC ; 
 scalar_t__ AMD_IP_BLOCK_TYPE_SMC ; 
 int /*<<< orphan*/  AMD_PG_STATE_UNGATE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*) ; 
 scalar_t__ FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*) ; 
 scalar_t__ FUNC13 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct amdgpu_device*) ; 
 int FUNC15 (void*) ; 
 int FUNC16 (void*) ; 
 int FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 

__attribute__((used)) static int FUNC19(struct amdgpu_device *adev)
{
	int i, r;

	FUNC10(adev);

	if (adev->gmc.xgmi.num_physical_nodes > 1)
		FUNC14(adev);

	FUNC2(adev);

	FUNC4(adev, AMD_PG_STATE_UNGATE);
	FUNC3(adev, AMD_CG_STATE_UNGATE);

	/* need to disable SMC first */
	for (i = 0; i < adev->num_ip_blocks; i++) {
		if (!adev->ip_blocks[i].status.hw)
			continue;
		if (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_SMC) {
			r = adev->ip_blocks[i].version->funcs->hw_fini((void *)adev);
			/* XXX handle errors */
			if (r) {
				FUNC0("hw_fini of IP block <%s> failed %d\n",
					  adev->ip_blocks[i].version->funcs->name, r);
			}
			adev->ip_blocks[i].status.hw = false;
			break;
		}
	}

	for (i = adev->num_ip_blocks - 1; i >= 0; i--) {
		if (!adev->ip_blocks[i].status.hw)
			continue;

		r = adev->ip_blocks[i].version->funcs->hw_fini((void *)adev);
		/* XXX handle errors */
		if (r) {
			FUNC0("hw_fini of IP block <%s> failed %d\n",
				  adev->ip_blocks[i].version->funcs->name, r);
		}

		adev->ip_blocks[i].status.hw = false;
	}


	for (i = adev->num_ip_blocks - 1; i >= 0; i--) {
		if (!adev->ip_blocks[i].status.sw)
			continue;

		if (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_GMC) {
			FUNC12(adev);
			FUNC7(&adev->virt.csa_obj);
			FUNC6(adev);
			FUNC5(adev);
			FUNC8(adev);
		}

		r = adev->ip_blocks[i].version->funcs->sw_fini((void *)adev);
		/* XXX handle errors */
		if (r) {
			FUNC0("sw_fini of IP block <%s> failed %d\n",
				  adev->ip_blocks[i].version->funcs->name, r);
		}
		adev->ip_blocks[i].status.sw = false;
		adev->ip_blocks[i].status.valid = false;
	}

	for (i = adev->num_ip_blocks - 1; i >= 0; i--) {
		if (!adev->ip_blocks[i].status.late_initialized)
			continue;
		if (adev->ip_blocks[i].version->funcs->late_fini)
			adev->ip_blocks[i].version->funcs->late_fini((void *)adev);
		adev->ip_blocks[i].status.late_initialized = false;
	}

	FUNC9(adev);

	if (FUNC11(adev))
		if (FUNC13(adev, false))
			FUNC1("failed to release exclusive mode on fini\n");

	return 0;
}