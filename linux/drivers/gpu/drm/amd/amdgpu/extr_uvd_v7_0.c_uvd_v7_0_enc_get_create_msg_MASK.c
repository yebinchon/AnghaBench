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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int /*<<< orphan*/  adev; } ;
struct amdgpu_job {struct amdgpu_ib* ibs; } ;
struct amdgpu_ib {int length_dw; int* ptr; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct amdgpu_bo*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int const,struct amdgpu_job**) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_job*) ; 
 int FUNC3 (struct amdgpu_job*,struct amdgpu_ring*,struct dma_fence**) ; 
 struct dma_fence* FUNC4 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_fence*) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_ring *ring, uint32_t handle,
				       struct amdgpu_bo *bo,
				       struct dma_fence **fence)
{
	const unsigned ib_size_dw = 16;
	struct amdgpu_job *job;
	struct amdgpu_ib *ib;
	struct dma_fence *f = NULL;
	uint64_t addr;
	int i, r;

	r = FUNC1(ring->adev, ib_size_dw * 4, &job);
	if (r)
		return r;

	ib = &job->ibs[0];
	addr = FUNC0(bo);

	ib->length_dw = 0;
	ib->ptr[ib->length_dw++] = 0x00000018;
	ib->ptr[ib->length_dw++] = 0x00000001; /* session info */
	ib->ptr[ib->length_dw++] = handle;
	ib->ptr[ib->length_dw++] = 0x00000000;
	ib->ptr[ib->length_dw++] = FUNC6(addr);
	ib->ptr[ib->length_dw++] = addr;

	ib->ptr[ib->length_dw++] = 0x00000014;
	ib->ptr[ib->length_dw++] = 0x00000002; /* task info */
	ib->ptr[ib->length_dw++] = 0x0000001c;
	ib->ptr[ib->length_dw++] = 0x00000000;
	ib->ptr[ib->length_dw++] = 0x00000000;

	ib->ptr[ib->length_dw++] = 0x00000008;
	ib->ptr[ib->length_dw++] = 0x08000001; /* op initialize */

	for (i = ib->length_dw; i < ib_size_dw; ++i)
		ib->ptr[i] = 0x0;

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