#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct psp_gfx_cmd_resp {int dummy; } ;
struct psp_context {void* fw_pri_buf; void* fence_buf; int /*<<< orphan*/  cmd_buf_mem; int /*<<< orphan*/  cmd_buf_mc_addr; int /*<<< orphan*/  cmd_buf_bo; int /*<<< orphan*/  fence_buf_mc_addr; int /*<<< orphan*/  fence_buf_bo; int /*<<< orphan*/  fw_pri_mc_addr; int /*<<< orphan*/  fw_pri_bo; struct amdgpu_device* adev; int /*<<< orphan*/  cmd; } ;
struct amdgpu_device {scalar_t__ in_gpu_reset; struct psp_context psp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PSP_1_MEG ; 
 int /*<<< orphan*/  PSP_CMD_BUFFER_SIZE ; 
 int /*<<< orphan*/  PSP_FENCE_BUFFER_SIZE ; 
 int /*<<< orphan*/  PSP_RING_TYPE__KM ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct psp_context*) ; 
 int FUNC6 (struct psp_context*) ; 
 int FUNC7 (struct psp_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct psp_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev)
{
	int ret;
	struct psp_context *psp = &adev->psp;

	if (FUNC2(adev) && adev->in_gpu_reset) {
		FUNC8(psp, PSP_RING_TYPE__KM); /* should not destroy ring, only stop */
		goto skip_memalloc;
	}

	psp->cmd = FUNC3(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
	if (!psp->cmd)
		return -ENOMEM;

	/* this fw pri bo is not used under SRIOV */
	if (!FUNC2(psp->adev)) {
		ret = FUNC1(adev, PSP_1_MEG, PSP_1_MEG,
					      AMDGPU_GEM_DOMAIN_GTT,
					      &psp->fw_pri_bo,
					      &psp->fw_pri_mc_addr,
					      &psp->fw_pri_buf);
		if (ret)
			goto failed;
	}

	ret = FUNC1(adev, PSP_FENCE_BUFFER_SIZE, PAGE_SIZE,
					AMDGPU_GEM_DOMAIN_VRAM,
					&psp->fence_buf_bo,
					&psp->fence_buf_mc_addr,
					&psp->fence_buf);
	if (ret)
		goto failed;

	ret = FUNC1(adev, PSP_CMD_BUFFER_SIZE, PAGE_SIZE,
				      AMDGPU_GEM_DOMAIN_VRAM,
				      &psp->cmd_buf_bo, &psp->cmd_buf_mc_addr,
				      (void **)&psp->cmd_buf_mem);
	if (ret)
		goto failed;

	FUNC4(psp->fence_buf, 0, PSP_FENCE_BUFFER_SIZE);

	ret = FUNC7(psp, PSP_RING_TYPE__KM);
	if (ret) {
		FUNC0("PSP ring init failed!\n");
		goto failed;
	}

skip_memalloc:
	ret = FUNC5(psp);
	if (ret)
		goto failed;

	ret = FUNC6(psp);
	if (ret)
		goto failed;

	return 0;

failed:
	/*
	 * all cleanup jobs (xgmi terminate, ras terminate,
	 * ring destroy, cmd/fence/fw buffers destory,
	 * psp->cmd destory) are delayed to psp_hw_fini
	 */
	return ret;
}