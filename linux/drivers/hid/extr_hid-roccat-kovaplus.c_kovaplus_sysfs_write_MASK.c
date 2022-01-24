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
typedef  int /*<<< orphan*/  uint ;
struct usb_device {int dummy; } ;
struct kovaplus_device {int /*<<< orphan*/  kovaplus_lock; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct device* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct kovaplus_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct usb_device*,int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct file *fp, struct kobject *kobj,
		void const *buf, loff_t off, size_t count,
		size_t real_size, uint command)
{
	struct device *dev = FUNC3(kobj)->parent->parent;
	struct kovaplus_device *kovaplus = FUNC1(FUNC0(dev));
	struct usb_device *usb_dev = FUNC2(FUNC7(dev));
	int retval;

	if (off != 0 || count != real_size)
		return -EINVAL;

	FUNC4(&kovaplus->kovaplus_lock);
	retval = FUNC6(usb_dev, command,
			buf, real_size);
	FUNC5(&kovaplus->kovaplus_lock);

	if (retval)
		return retval;

	return real_size;
}