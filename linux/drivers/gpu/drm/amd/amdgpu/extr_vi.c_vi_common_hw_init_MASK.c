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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC4(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	/* move the golden regs per IP block */
	FUNC1(adev);
	/* enable pcie gen2/3 link */
	FUNC2(adev);
	/* enable aspm */
	FUNC3(adev);
	/* enable the doorbell aperture */
	FUNC0(adev, true);

	return 0;
}