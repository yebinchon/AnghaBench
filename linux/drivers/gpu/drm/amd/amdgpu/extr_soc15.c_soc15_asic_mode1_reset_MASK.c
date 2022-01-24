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
typedef  scalar_t__ u32 ;
struct amdgpu_device {scalar_t__ usec_timeout; TYPE_1__* nbio_funcs; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ (* get_memsize ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct amdgpu_device*) ; 
 scalar_t__ FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev)
{
	u32 i;
	int ret = 0;

	FUNC0(adev, true);

	FUNC2(adev->dev, "GPU mode1 reset\n");

	/* disable BM */
	FUNC3(adev->pdev);

	FUNC5(adev->pdev);

	ret = FUNC6(adev);
	if (ret)
		FUNC1(adev->dev, "GPU mode1 reset failed\n");

	FUNC4(adev->pdev);

	/* wait for asic to come out of reset */
	for (i = 0; i < adev->usec_timeout; i++) {
		u32 memsize = adev->nbio_funcs->get_memsize(adev);

		if (memsize != 0xffffffff)
			break;
		FUNC8(1);
	}

	FUNC0(adev, false);

	return ret;
}