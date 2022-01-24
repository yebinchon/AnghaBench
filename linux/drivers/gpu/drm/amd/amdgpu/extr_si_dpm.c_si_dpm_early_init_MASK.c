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
struct TYPE_2__ {struct amdgpu_device* pp_handle; int /*<<< orphan*/ * pp_funcs; } ;
struct amdgpu_device {TYPE_1__ powerplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  si_dpm_funcs ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC1(void *handle)
{

	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	adev->powerplay.pp_funcs = &si_dpm_funcs;
	adev->powerplay.pp_handle = adev;
	FUNC0(adev);
	return 0;
}