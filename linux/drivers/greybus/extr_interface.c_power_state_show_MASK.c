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
struct gb_interface {scalar_t__ active; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 struct gb_interface* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct gb_interface *intf = FUNC1(dev);

	if (intf->active)
		return FUNC0(buf, PAGE_SIZE, "on\n");
	else
		return FUNC0(buf, PAGE_SIZE, "off\n");
}