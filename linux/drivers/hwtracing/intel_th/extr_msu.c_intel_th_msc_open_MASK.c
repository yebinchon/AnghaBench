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
struct msc_iter {int /*<<< orphan*/  dev; } ;
struct msc {int dummy; } ;
struct intel_th_device {int /*<<< orphan*/  dev; } ;
struct inode {int dummy; } ;
struct file {struct msc_iter* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct msc_iter*) ; 
 int FUNC1 (struct msc_iter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct msc* FUNC3 (int /*<<< orphan*/ *) ; 
 struct msc_iter* FUNC4 (struct msc*) ; 
 int FUNC5 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct intel_th_device *thdev = file->private_data;
	struct msc *msc = FUNC3(&thdev->dev);
	struct msc_iter *iter;

	if (!FUNC2(CAP_SYS_RAWIO))
		return -EPERM;

	iter = FUNC4(msc);
	if (FUNC0(iter))
		return FUNC1(iter);

	file->private_data = iter;

	return FUNC5(inode, file);
}