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
struct amdgpu_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 struct amdgpu_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct amdgpu_bo*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(struct amdgpu_bo *bo, bool no_intr)
{
	struct amdgpu_device *adev = FUNC1(bo->tbo.bdev);
	int r;

	r = FUNC0(&bo->tbo, !no_intr, false, NULL);
	if (FUNC3(r != 0)) {
		if (r != -ERESTARTSYS)
			FUNC2(adev->dev, "%p reserve failed\n", bo);
		return r;
	}
	return 0;
}