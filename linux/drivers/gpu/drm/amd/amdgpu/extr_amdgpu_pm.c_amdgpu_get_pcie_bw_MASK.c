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
typedef  int /*<<< orphan*/  uint64_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr,
		char *buf)
{
	struct drm_device *ddev = FUNC1(dev);
	struct amdgpu_device *adev = ddev->dev_private;
	uint64_t count0, count1;

	FUNC0(adev, &count0, &count1);
	return FUNC3(buf, PAGE_SIZE,	"%llu %llu %i\n",
			count0, count1, FUNC2(adev->pdev));
}