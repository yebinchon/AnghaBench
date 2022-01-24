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
typedef  int /*<<< orphan*/  u64 ;
struct cik_mqd {int dummy; } ;
struct amdgpu_ring {int /*<<< orphan*/  mqd_obj; int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; int /*<<< orphan*/  me; } ;
struct TYPE_2__ {struct amdgpu_ring* compute_ring; } ;
struct amdgpu_device {int /*<<< orphan*/  srbm_mutex; int /*<<< orphan*/  dev; TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,struct cik_mqd*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,struct cik_mqd*,int /*<<< orphan*/ ,struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct amdgpu_device *adev, int ring_id)
{
	int r;
	u64 mqd_gpu_addr;
	struct cik_mqd *mqd;
	struct amdgpu_ring *ring = &adev->gfx.compute_ring[ring_id];

	r = FUNC0(adev, sizeof(struct cik_mqd), PAGE_SIZE,
				      AMDGPU_GEM_DOMAIN_GTT, &ring->mqd_obj,
				      &mqd_gpu_addr, (void **)&mqd);
	if (r) {
		FUNC4(adev->dev, "(%d) create MQD bo failed\n", r);
		return r;
	}

	FUNC8(&adev->srbm_mutex);
	FUNC3(adev, ring->me, ring->pipe, ring->queue, 0);

	FUNC7(adev, mqd, mqd_gpu_addr, ring);
	FUNC6(adev);
	FUNC5(adev, mqd);

	FUNC3(adev, 0, 0, 0, 0);
	FUNC9(&adev->srbm_mutex);

	FUNC1(ring->mqd_obj);
	FUNC2(ring->mqd_obj);
	return 0;
}