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
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  min_rpm ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_PP_SENSOR_MIN_FAN_RPM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,void*,int*) ; 
 struct amdgpu_device* FUNC1 (struct device*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					 struct device_attribute *attr,
					 char *buf)
{
	struct amdgpu_device *adev = FUNC1(dev);
	u32 min_rpm = 0;
	u32 size = sizeof(min_rpm);
	int r;

	r = FUNC0(adev, AMDGPU_PP_SENSOR_MIN_FAN_RPM,
				   (void *)&min_rpm, &size);
	if (r)
		return r;

	return FUNC2(buf, PAGE_SIZE, "%d\n", min_rpm);
}