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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {scalar_t__ buffer_funcs; } ;
struct amdgpu_device {TYPE_1__ mman; } ;
struct amdgpu_bo_param {unsigned int size; unsigned int domain; int /*<<< orphan*/ * resv; int /*<<< orphan*/  type; scalar_t__ flags; int /*<<< orphan*/  byte_align; } ;
struct amdgpu_bo {int /*<<< orphan*/  tbo; } ;
typedef  int /*<<< orphan*/  bp ;

/* Variables and functions */
 int AMDGPU_BENCHMARK_ITERATIONS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct amdgpu_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int,int,unsigned int,unsigned int,char*) ; 
 int FUNC3 (struct amdgpu_device*,struct amdgpu_bo_param*,struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_bo*) ; 
 int FUNC5 (struct amdgpu_bo*,unsigned int) ; 
 int FUNC6 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_bo*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_bo_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ttm_bo_type_kernel ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct amdgpu_device *adev, unsigned size,
				  unsigned sdomain, unsigned ddomain)
{
	struct amdgpu_bo *dobj = NULL;
	struct amdgpu_bo *sobj = NULL;
	struct amdgpu_bo_param bp;
	uint64_t saddr, daddr;
	int r, n;
	int time;

	FUNC12(&bp, 0, sizeof(bp));
	bp.size = size;
	bp.byte_align = PAGE_SIZE;
	bp.domain = sdomain;
	bp.flags = 0;
	bp.type = ttm_bo_type_kernel;
	bp.resv = NULL;
	n = AMDGPU_BENCHMARK_ITERATIONS;
	r = FUNC3(adev, &bp, &sobj);
	if (r) {
		goto out_cleanup;
	}
	r = FUNC6(sobj, false);
	if (FUNC13(r != 0))
		goto out_cleanup;
	r = FUNC5(sobj, sdomain);
	if (r) {
		FUNC9(sobj);
		goto out_cleanup;
	}
	r = FUNC10(&sobj->tbo);
	FUNC9(sobj);
	if (r) {
		goto out_cleanup;
	}
	saddr = FUNC4(sobj);
	bp.domain = ddomain;
	r = FUNC3(adev, &bp, &dobj);
	if (r) {
		goto out_cleanup;
	}
	r = FUNC6(dobj, false);
	if (FUNC13(r != 0))
		goto out_cleanup;
	r = FUNC5(dobj, ddomain);
	if (r) {
		FUNC9(sobj);
		goto out_cleanup;
	}
	r = FUNC10(&dobj->tbo);
	FUNC9(dobj);
	if (r) {
		goto out_cleanup;
	}
	daddr = FUNC4(dobj);

	if (adev->mman.buffer_funcs) {
		time = FUNC1(adev, size, saddr, daddr, n);
		if (time < 0)
			goto out_cleanup;
		if (time > 0)
			FUNC2(n, size, time,
						     sdomain, ddomain, "dma");
	}

out_cleanup:
	/* Check error value now. The value can be overwritten when clean up.*/
	if (r) {
		FUNC0("Error while benchmarking BO move.\n");
	}

	if (sobj) {
		r = FUNC6(sobj, true);
		if (FUNC11(r == 0)) {
			FUNC7(sobj);
			FUNC9(sobj);
		}
		FUNC8(&sobj);
	}
	if (dobj) {
		r = FUNC6(dobj, true);
		if (FUNC11(r == 0)) {
			FUNC7(dobj);
			FUNC9(dobj);
		}
		FUNC8(&dobj);
	}
}