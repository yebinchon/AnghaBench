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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  MOTION_SENSOR_X_KEY ; 
 int /*<<< orphan*/  MOTION_SENSOR_Y_KEY ; 
 int /*<<< orphan*/  MOTION_SENSOR_Z_KEY ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	int ret;
	s16 x, y, z;

	ret = FUNC0(MOTION_SENSOR_X_KEY, &x);
	if (ret)
		goto out;
	ret = FUNC0(MOTION_SENSOR_Y_KEY, &y);
	if (ret)
		goto out;
	ret = FUNC0(MOTION_SENSOR_Z_KEY, &z);
	if (ret)
		goto out;

out:
	if (ret)
		return ret;
	else
		return FUNC1(buf, PAGE_SIZE, "(%d,%d,%d)\n", x, y, z);
}