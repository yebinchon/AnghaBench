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
typedef  scalar_t__ u32 ;
struct via_cputemp_data {int /*<<< orphan*/  msr_temp; int /*<<< orphan*/  id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 struct via_cputemp_data* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *devattr,
			 char *buf)
{
	struct via_cputemp_data *data = FUNC0(dev);
	u32 eax, edx;
	int err;

	err = FUNC1(data->id, data->msr_temp, &eax, &edx);
	if (err)
		return -EAGAIN;

	return FUNC2(buf, "%lu\n", ((unsigned long)eax & 0xffffff) * 1000);
}