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
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int /*<<< orphan*/  srbm_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_device* FUNC1 (struct kgd_dev*) ; 
 int /*<<< orphan*/  mmSRBM_GFX_CNTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct kgd_dev *kgd)
{
	struct amdgpu_device *adev = FUNC1(kgd);

	FUNC0(mmSRBM_GFX_CNTL, 0);
	FUNC2(&adev->srbm_mutex);
}