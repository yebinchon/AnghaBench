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
struct inode {int i_state; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_cdev; } ;
struct dax_device {int /*<<< orphan*/  cdev; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  DAXDEV_ALIVE ; 
 scalar_t__ DAXFS_MAGIC ; 
 int /*<<< orphan*/  GFP_USER ; 
 int I_NEW ; 
 int /*<<< orphan*/  S_DAX ; 
 int /*<<< orphan*/  S_IFCHR ; 
 int /*<<< orphan*/  dax_set ; 
 int /*<<< orphan*/  dax_superblock ; 
 int /*<<< orphan*/  dax_test ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dax_device* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static struct dax_device *FUNC6(dev_t devt)
{
	struct dax_device *dax_dev;
	struct inode *inode;

	inode = FUNC1(dax_superblock, FUNC0(devt + DAXFS_MAGIC, 31),
			dax_test, dax_set, &devt);

	if (!inode)
		return NULL;

	dax_dev = FUNC4(inode);
	if (inode->i_state & I_NEW) {
		FUNC3(DAXDEV_ALIVE, &dax_dev->flags);
		inode->i_cdev = &dax_dev->cdev;
		inode->i_mode = S_IFCHR;
		inode->i_flags = S_DAX;
		FUNC2(&inode->i_data, GFP_USER);
		FUNC5(inode);
	}

	return dax_dev;
}