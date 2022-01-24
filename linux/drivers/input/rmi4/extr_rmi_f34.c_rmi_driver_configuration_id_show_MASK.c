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
struct device {int dummy; } ;
struct rmi_function {struct device dev; } ;
struct rmi_driver_data {struct rmi_function* f34_container; } ;
struct f34_data {int /*<<< orphan*/  configuration_id; } ;
struct device_attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 void* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
						struct device_attribute *dattr,
						char *buf)
{
	struct rmi_driver_data *data = FUNC0(dev);
	struct rmi_function *fn = data->f34_container;
	struct f34_data *f34;

	if (fn) {
		f34 = FUNC0(&fn->dev);

		return FUNC1(buf, PAGE_SIZE, "%s\n", f34->configuration_id);
	}

	return 0;
}