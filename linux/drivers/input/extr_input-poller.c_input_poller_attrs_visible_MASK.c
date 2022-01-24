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
typedef  int /*<<< orphan*/  umode_t ;
struct kobject {int dummy; } ;
struct input_dev {scalar_t__ poller; } ;
struct device {int dummy; } ;
struct attribute {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 struct device* FUNC0 (struct kobject*) ; 
 struct input_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static umode_t FUNC2(struct kobject *kobj,
					  struct attribute *attr, int n)
{
	struct device *dev = FUNC0(kobj);
	struct input_dev *input = FUNC1(dev);

	return input->poller ? attr->mode : 0;
}