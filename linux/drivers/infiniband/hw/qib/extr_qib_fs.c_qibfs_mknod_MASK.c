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
struct inode {struct file_operations const* i_fop; int /*<<< orphan*/ * i_op; void* i_private; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; scalar_t__ i_blocks; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 

__attribute__((used)) static int FUNC6(struct inode *dir, struct dentry *dentry,
		       umode_t mode, const struct file_operations *fops,
		       void *data)
{
	int error;
	struct inode *inode = FUNC5(dir->i_sb);

	if (!inode) {
		error = -EPERM;
		goto bail;
	}

	inode->i_ino = FUNC3();
	inode->i_mode = mode;
	inode->i_uid = GLOBAL_ROOT_UID;
	inode->i_gid = GLOBAL_ROOT_GID;
	inode->i_blocks = 0;
	inode->i_atime = FUNC1(inode);
	inode->i_mtime = inode->i_atime;
	inode->i_ctime = inode->i_atime;
	inode->i_private = data;
	if (FUNC0(mode)) {
		inode->i_op = &simple_dir_inode_operations;
		FUNC4(inode);
		FUNC4(dir);
	}

	inode->i_fop = fops;

	FUNC2(dentry, inode);
	error = 0;

bail:
	return error;
}