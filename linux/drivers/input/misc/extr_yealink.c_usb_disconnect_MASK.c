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
struct yealink_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_rwsema ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct yealink_dev*,int /*<<< orphan*/ ) ; 
 struct yealink_dev* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yld_attr_group ; 

__attribute__((used)) static void FUNC6(struct usb_interface *intf)
{
	struct yealink_dev *yld;

	FUNC0(&sysfs_rwsema);
	yld = FUNC4(intf);
	FUNC1(&intf->dev.kobj, &yld_attr_group);
	FUNC5(intf, NULL);
	FUNC2(&sysfs_rwsema);

	FUNC3(yld, 0);
}