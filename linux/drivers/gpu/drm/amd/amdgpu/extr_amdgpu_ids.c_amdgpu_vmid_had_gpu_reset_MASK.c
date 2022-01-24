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
struct amdgpu_vmid {scalar_t__ current_gpu_reset_count; } ;
struct amdgpu_device {int /*<<< orphan*/  gpu_reset_counter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

bool FUNC1(struct amdgpu_device *adev,
			       struct amdgpu_vmid *id)
{
	return id->current_gpu_reset_count !=
		FUNC0(&adev->gpu_reset_counter);
}