#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  void* uint32_t ;
struct kgd_dev {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_job {void* vmid; struct amdgpu_ib* ibs; } ;
struct amdgpu_ib {void** ptr; void* length_dw; int /*<<< orphan*/  gpu_addr; } ;
struct TYPE_6__ {TYPE_2__* instance; } ;
struct TYPE_4__ {struct amdgpu_ring* compute_ring; } ;
struct amdgpu_device {TYPE_3__ sdma; TYPE_1__ gfx; } ;
typedef  enum kgd_engine_type { ____Placeholder_kgd_engine_type } kgd_engine_type ;
struct TYPE_5__ {struct amdgpu_ring ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
#define  KGD_ENGINE_MEC1 130 
#define  KGD_ENGINE_SDMA1 129 
#define  KGD_ENGINE_SDMA2 128 
 int FUNC1 (struct amdgpu_ring*,int,struct amdgpu_ib*,struct amdgpu_job*,struct dma_fence**) ; 
 int FUNC2 (struct amdgpu_device*,int,struct amdgpu_job**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_job*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*) ; 
 int FUNC5 (struct dma_fence*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ib*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

int FUNC8(struct kgd_dev *kgd, enum kgd_engine_type engine,
				uint32_t vmid, uint64_t gpu_addr,
				uint32_t *ib_cmd, uint32_t ib_len)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)kgd;
	struct amdgpu_job *job;
	struct amdgpu_ib *ib;
	struct amdgpu_ring *ring;
	struct dma_fence *f = NULL;
	int ret;

	switch (engine) {
	case KGD_ENGINE_MEC1:
		ring = &adev->gfx.compute_ring[0];
		break;
	case KGD_ENGINE_SDMA1:
		ring = &adev->sdma.instance[0].ring;
		break;
	case KGD_ENGINE_SDMA2:
		ring = &adev->sdma.instance[1].ring;
		break;
	default:
		FUNC7("Invalid engine in IB submission: %d\n", engine);
		ret = -EINVAL;
		goto err;
	}

	ret = FUNC2(adev, 1, &job, NULL);
	if (ret)
		goto err;

	ib = &job->ibs[0];
	FUNC6(ib, 0, sizeof(struct amdgpu_ib));

	ib->gpu_addr = gpu_addr;
	ib->ptr = ib_cmd;
	ib->length_dw = ib_len;
	/* This works for NO_HWS. TODO: need to handle without knowing VMID */
	job->vmid = vmid;

	ret = FUNC1(ring, 1, ib, job, &f);
	if (ret) {
		FUNC0("amdgpu: failed to schedule IB.\n");
		goto err_ib_sched;
	}

	ret = FUNC5(f, false);

err_ib_sched:
	FUNC4(f);
	FUNC3(job);
err:
	return ret;
}