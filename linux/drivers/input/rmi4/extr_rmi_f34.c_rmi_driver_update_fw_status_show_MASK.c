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
struct rmi_driver_data {scalar_t__ f34_container; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct rmi_driver_data* FUNC0 (struct device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
						struct device_attribute *dattr,
						char *buf)
{
	struct rmi_driver_data *data = FUNC0(dev);
	int update_status = 0;

	if (data->f34_container)
		update_status = FUNC1(data->f34_container);

	return FUNC2(buf, PAGE_SIZE, "%d\n", update_status);
}