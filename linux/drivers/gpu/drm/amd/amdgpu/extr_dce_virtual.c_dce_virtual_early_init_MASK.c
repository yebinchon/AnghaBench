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
struct TYPE_2__ {int num_hpd; int num_dig; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC2(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC0(adev);
	FUNC1(adev);

	adev->mode_info.num_hpd = 1;
	adev->mode_info.num_dig = 1;
	return 0;
}