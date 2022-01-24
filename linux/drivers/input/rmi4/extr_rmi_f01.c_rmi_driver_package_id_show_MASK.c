#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rmi_driver_data {TYPE_1__* f01_container; } ;
struct TYPE_4__ {int package_id; } ;
struct f01_data {TYPE_2__ properties; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 void* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
					  struct device_attribute *dattr,
					  char *buf)
{
	struct rmi_driver_data *data = FUNC0(dev);
	struct f01_data *f01 = FUNC0(&data->f01_container->dev);

	u32 package_id = f01->properties.package_id;

	return FUNC1(buf, PAGE_SIZE, "%04x.%04x\n",
			 package_id & 0xffff, (package_id >> 16) & 0xffff);
}