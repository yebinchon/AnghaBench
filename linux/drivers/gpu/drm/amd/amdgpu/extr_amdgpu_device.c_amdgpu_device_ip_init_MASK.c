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
struct TYPE_13__ {int num_physical_nodes; } ;
struct TYPE_14__ {TYPE_6__ xgmi; } ;
struct TYPE_12__ {int /*<<< orphan*/  csa_obj; } ;
struct amdgpu_device {int num_ip_blocks; TYPE_7__ gmc; int /*<<< orphan*/  dev; TYPE_5__ virt; TYPE_4__* ip_blocks; } ;
struct TYPE_10__ {int sw; int hw; int /*<<< orphan*/  valid; } ;
struct TYPE_11__ {TYPE_3__ status; TYPE_2__* version; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__* funcs; } ;
struct TYPE_8__ {int (* sw_init ) (void*) ;int (* hw_init ) (void*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGIM_ERROR_VF_IB_INIT_FAIL ; 
 int /*<<< orphan*/  AMDGPU_CSA_SIZE ; 
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 scalar_t__ AMD_IP_BLOCK_TYPE_GMC ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct amdgpu_device*) ; 
 int FUNC7 (struct amdgpu_device*) ; 
 int FUNC8 (struct amdgpu_device*) ; 
 scalar_t__ amdgpu_mcbp ; 
 int FUNC9 (struct amdgpu_device*) ; 
 scalar_t__ FUNC10 (struct amdgpu_device*) ; 
 int FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC17 (void*) ; 
 int FUNC18 (void*) ; 

__attribute__((used)) static int FUNC19(struct amdgpu_device *adev)
{
	int i, r;

	r = FUNC9(adev);
	if (r)
		return r;

	for (i = 0; i < adev->num_ip_blocks; i++) {
		if (!adev->ip_blocks[i].status.valid)
			continue;
		r = adev->ip_blocks[i].version->funcs->sw_init((void *)adev);
		if (r) {
			FUNC0("sw_init of IP block <%s> failed %d\n",
				  adev->ip_blocks[i].version->funcs->name, r);
			goto init_failed;
		}
		adev->ip_blocks[i].status.sw = true;

		/* need to do gmc hw init early so we can allocate gpu mem */
		if (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_GMC) {
			r = FUNC6(adev);
			if (r) {
				FUNC0("amdgpu_vram_scratch_init failed %d\n", r);
				goto init_failed;
			}
			r = adev->ip_blocks[i].version->funcs->hw_init((void *)adev);
			if (r) {
				FUNC0("hw_init %d failed %d\n", i, r);
				goto init_failed;
			}
			r = FUNC7(adev);
			if (r) {
				FUNC0("amdgpu_device_wb_init failed %d\n", r);
				goto init_failed;
			}
			adev->ip_blocks[i].status.hw = true;

			/* right after GMC hw init, we create CSA */
			if (amdgpu_mcbp || FUNC10(adev)) {
				r = FUNC1(adev, &adev->virt.csa_obj,
								AMDGPU_GEM_DOMAIN_VRAM,
								AMDGPU_CSA_SIZE);
				if (r) {
					FUNC0("allocate CSA failed %d\n", r);
					goto init_failed;
				}
			}
		}
	}

	r = FUNC8(adev);
	if (r) {
		FUNC16(adev->dev, "IB initialization failed (%d).\n", r);
		FUNC12(adev, AMDGIM_ERROR_VF_IB_INIT_FAIL, 0, r);
		goto init_failed;
	}

	r = FUNC11(adev); /* create ucode bo when sw_init complete*/
	if (r)
		goto init_failed;

	r = FUNC4(adev);
	if (r)
		goto init_failed;

	r = FUNC3(adev);
	if (r)
		goto init_failed;

	r = FUNC5(adev);
	if (r)
		goto init_failed;

	if (adev->gmc.xgmi.num_physical_nodes > 1)
		FUNC15(adev);
	FUNC2(adev);

init_failed:
	if (FUNC10(adev)) {
		if (!r)
			FUNC13(adev);
		FUNC14(adev, true);
	}

	return r;
}