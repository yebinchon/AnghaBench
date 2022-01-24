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
typedef  int /*<<< orphan*/  uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_job {struct amdgpu_ib* ibs; } ;
struct amdgpu_ib {int* ptr; int length_dw; } ;
struct TYPE_3__ {int /*<<< orphan*/  jpeg_pitch; } ;
struct TYPE_4__ {TYPE_1__ internal; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKETJ_TYPE0 ; 
 int /*<<< orphan*/  PACKETJ_TYPE6 ; 
 int FUNC1 (struct amdgpu_device*,unsigned int const,struct amdgpu_job**) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_job*) ; 
 int FUNC3 (struct amdgpu_job*,struct amdgpu_ring*,struct dma_fence**) ; 
 struct dma_fence* FUNC4 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_fence*) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_ring *ring, uint32_t handle,
		struct dma_fence **fence)
{
	struct amdgpu_device *adev = ring->adev;
	struct amdgpu_job *job;
	struct amdgpu_ib *ib;
	struct dma_fence *f = NULL;
	const unsigned ib_size_dw = 16;
	int i, r;

	r = FUNC1(ring->adev, ib_size_dw * 4, &job);
	if (r)
		return r;

	ib = &job->ibs[0];

	ib->ptr[0] = FUNC0(adev->vcn.internal.jpeg_pitch, 0, 0, PACKETJ_TYPE0);
	ib->ptr[1] = 0xDEADBEEF;
	for (i = 2; i < 16; i += 2) {
		ib->ptr[i] = FUNC0(0, 0, 0, PACKETJ_TYPE6);
		ib->ptr[i+1] = 0;
	}
	ib->length_dw = 16;

	r = FUNC3(job, ring, &f);
	if (r)
		goto err;

	if (fence)
		*fence = FUNC4(f);
	FUNC5(f);

	return 0;

err:
	FUNC2(job);
	return r;
}