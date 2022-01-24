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
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 struct amdgpu_ras* FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ras*) ; 

int FUNC7(struct amdgpu_device *adev)
{
	struct amdgpu_ras *con = FUNC3(adev);

	if (!con)
		return 0;

	FUNC2(adev);
	FUNC4(adev);

	FUNC0(con->features, "Feature mask is not cleared");

	if (con->features)
		FUNC1(adev, 1);

	FUNC5(adev, NULL);
	FUNC6(con);

	return 0;
}