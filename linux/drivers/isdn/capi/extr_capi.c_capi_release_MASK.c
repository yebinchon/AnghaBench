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
struct inode {int dummy; } ;
struct file {struct capidev* private_data; } ;
struct TYPE_2__ {scalar_t__ applid; } ;
struct capidev {int /*<<< orphan*/  recvqueue; TYPE_1__ ap; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  capidev_list_lock ; 
 int /*<<< orphan*/  FUNC1 (struct capidev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct capidev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct capidev *cdev = file->private_data;

	FUNC4(&capidev_list_lock);
	FUNC3(&cdev->list);
	FUNC5(&capidev_list_lock);

	if (cdev->ap.applid)
		FUNC0(&cdev->ap);
	FUNC6(&cdev->recvqueue);
	FUNC1(cdev, 0xffffffff);

	FUNC2(cdev);
	return 0;
}