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
union ib_gid {int /*<<< orphan*/ * raw; } ;
typedef  int /*<<< orphan*/  u8 ;
struct usnic_ib_dev {int /*<<< orphan*/  usdev_lock; TYPE_1__* ufdev; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  inaddr; int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct usnic_ib_dev* FUNC3 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct ib_device *ibdev, u8 port, int index,
				union ib_gid *gid)
{

	struct usnic_ib_dev *us_ibdev = FUNC3(ibdev);
	FUNC4("\n");

	if (index > 1)
		return -EINVAL;

	FUNC1(&us_ibdev->usdev_lock);
	FUNC0(&(gid->raw[0]), 0, sizeof(gid->raw));
	FUNC5(us_ibdev->ufdev->mac, us_ibdev->ufdev->inaddr,
			&gid->raw[0]);
	FUNC2(&us_ibdev->usdev_lock);

	return 0;
}