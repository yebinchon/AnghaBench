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
struct si_power_info {int /*<<< orphan*/  sram_end; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 struct si_power_info* FUNC3 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev)
{
	struct si_power_info *si_pi = FUNC3(adev);

	FUNC1(adev);
	FUNC2(adev, false);

	return FUNC0(adev, si_pi->sram_end);
}