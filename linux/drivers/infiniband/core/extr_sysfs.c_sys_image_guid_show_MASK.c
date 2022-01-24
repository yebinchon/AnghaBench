#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sys_image_guid; } ;
struct ib_device {TYPE_1__ attrs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ib_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *device,
				   struct device_attribute *dev_attr, char *buf)
{
	struct ib_device *dev = FUNC1(device);

	return FUNC2(buf, "%04x:%04x:%04x:%04x\n",
		       FUNC0(((__be16 *) &dev->attrs.sys_image_guid)[0]),
		       FUNC0(((__be16 *) &dev->attrs.sys_image_guid)[1]),
		       FUNC0(((__be16 *) &dev->attrs.sys_image_guid)[2]),
		       FUNC0(((__be16 *) &dev->attrs.sys_image_guid)[3]));
}