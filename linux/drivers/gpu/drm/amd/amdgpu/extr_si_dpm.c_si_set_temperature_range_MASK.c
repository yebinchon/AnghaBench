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
 int /*<<< orphan*/  R600_TEMP_RANGE_MAX ; 
 int /*<<< orphan*/  R600_TEMP_RANGE_MIN ; 
 int FUNC0 (struct amdgpu_device*,int) ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev)
{
	int ret;

	ret = FUNC0(adev, false);
	if (ret)
		return ret;
	ret = FUNC1(adev, R600_TEMP_RANGE_MIN, R600_TEMP_RANGE_MAX);
	if (ret)
		return ret;
	ret = FUNC0(adev, true);
	if (ret)
		return ret;

	return ret;
}