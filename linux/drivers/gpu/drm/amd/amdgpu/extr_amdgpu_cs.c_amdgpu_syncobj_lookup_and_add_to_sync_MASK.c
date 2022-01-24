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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u64 ;
struct dma_fence {int dummy; } ;
struct amdgpu_cs_parser {TYPE_1__* job; int /*<<< orphan*/  adev; int /*<<< orphan*/  filp; } ;
struct TYPE_2__ {int /*<<< orphan*/  sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dma_fence*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_fence**) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_cs_parser *p,
						 uint32_t handle, u64 point,
						 u64 flags)
{
	struct dma_fence *fence;
	int r;

	r = FUNC3(p->filp, handle, point, flags, &fence);
	if (r) {
		FUNC0("syncobj %u failed to find fence @ %llu (%d)!\n",
			  handle, point, r);
		return r;
	}

	r = FUNC1(p->adev, &p->job->sync, fence, true);
	FUNC2(fence);

	return r;
}