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
struct TYPE_2__ {int /*<<< orphan*/ * obj; } ;
struct amdgpu_framebuffer {TYPE_1__ base; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo*) ; 
 struct amdgpu_bo* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(const struct amdgpu_framebuffer *amdgpu_fb,
		       uint64_t *tiling_flags)
{
	struct amdgpu_bo *rbo = FUNC4(amdgpu_fb->base.obj[0]);
	int r = FUNC2(rbo, false);

	if (FUNC5(r)) {
		/* Don't show error message when returning -ERESTARTSYS */
		if (r != -ERESTARTSYS)
			FUNC0("Unable to reserve buffer: %d\n", r);
		return r;
	}

	if (tiling_flags)
		FUNC1(rbo, tiling_flags);

	FUNC3(rbo);

	return r;
}