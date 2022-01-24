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
struct uhid_device {int running; int /*<<< orphan*/  worker; int /*<<< orphan*/  report_wait; int /*<<< orphan*/  waitq; int /*<<< orphan*/  qlock; int /*<<< orphan*/  report_lock; int /*<<< orphan*/  devlock; } ;
struct inode {int dummy; } ;
struct file {struct uhid_device* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct uhid_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  uhid_device_add_worker ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct uhid_device *uhid;

	uhid = FUNC2(sizeof(*uhid), GFP_KERNEL);
	if (!uhid)
		return -ENOMEM;

	FUNC3(&uhid->devlock);
	FUNC3(&uhid->report_lock);
	FUNC4(&uhid->qlock);
	FUNC1(&uhid->waitq);
	FUNC1(&uhid->report_wait);
	uhid->running = false;
	FUNC0(&uhid->worker, uhid_device_add_worker);

	file->private_data = uhid;
	FUNC5(inode, file);

	return 0;
}