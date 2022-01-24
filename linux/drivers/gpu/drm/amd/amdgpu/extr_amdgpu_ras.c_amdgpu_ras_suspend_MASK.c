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
struct amdgpu_ras {scalar_t__ features; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int) ; 
 struct amdgpu_ras* FUNC1 (struct amdgpu_device*) ; 

void FUNC2(struct amdgpu_device *adev)
{
	struct amdgpu_ras *con = FUNC1(adev);

	if (!con)
		return;

	FUNC0(adev, 0);
	/* Make sure all ras objects are disabled. */
	if (con->features)
		FUNC0(adev, 1);
}