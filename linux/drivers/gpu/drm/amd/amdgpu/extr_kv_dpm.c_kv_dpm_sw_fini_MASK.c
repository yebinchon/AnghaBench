#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct TYPE_5__ {TYPE_1__ thermal; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC0(&adev->pm.dpm.thermal.work);

	FUNC2(&adev->pm.mutex);
	FUNC1(adev);
	FUNC3(&adev->pm.mutex);

	return 0;
}