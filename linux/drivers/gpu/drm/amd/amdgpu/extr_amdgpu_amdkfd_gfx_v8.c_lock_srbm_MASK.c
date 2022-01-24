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
typedef  int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int /*<<< orphan*/  srbm_mutex; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct amdgpu_device* FUNC5 (struct kgd_dev*) ; 
 int /*<<< orphan*/  mmSRBM_GFX_CNTL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct kgd_dev *kgd, uint32_t mec, uint32_t pipe,
			uint32_t queue, uint32_t vmid)
{
	struct amdgpu_device *adev = FUNC5(kgd);
	uint32_t value = FUNC1(pipe) | FUNC0(mec) | FUNC3(vmid) | FUNC2(queue);

	FUNC6(&adev->srbm_mutex);
	FUNC4(mmSRBM_GFX_CNTL, value);
}