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
struct inode {int dummy; } ;
struct file {struct capidev* private_data; } ;
struct capidev {int /*<<< orphan*/  list; int /*<<< orphan*/  nccis; int /*<<< orphan*/  recvwait; int /*<<< orphan*/  recvqueue; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  capidev_list ; 
 int /*<<< orphan*/  capidev_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct capidev* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct capidev *cdev;

	cdev = FUNC2(sizeof(*cdev), GFP_KERNEL);
	if (!cdev)
		return -ENOMEM;

	FUNC4(&cdev->lock);
	FUNC7(&cdev->recvqueue);
	FUNC1(&cdev->recvwait);
	FUNC0(&cdev->nccis);
	file->private_data = cdev;

	FUNC5(&capidev_list_lock);
	FUNC3(&cdev->list, &capidev_list);
	FUNC6(&capidev_list_lock);

	return FUNC8(inode, file);
}