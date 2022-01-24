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
struct inode {struct drm_file* private_data; int /*<<< orphan*/  i_rdev; } ;
struct file {struct drm_file* private_data; int /*<<< orphan*/  i_rdev; } ;
struct TYPE_4__ {TYPE_1__* primary; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct drm_file {int authenticated; int /*<<< orphan*/  filp; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_file* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  POISON_INUSE ; 
 int FUNC1 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

struct drm_file *FUNC5(struct drm_i915_private *i915)
{
	struct file *filp;
	struct inode *inode;
	struct drm_file *file;
	int err;

	inode = FUNC3(sizeof(*inode), GFP_KERNEL);
	if (!inode) {
		err = -ENOMEM;
		goto err;
	}

	inode->i_rdev = i915->drm.primary->index;

	filp = FUNC3(sizeof(*filp), GFP_KERNEL);
	if (!filp) {
		err = -ENOMEM;
		goto err_inode;
	}

	err = FUNC1(inode, filp);
	if (err)
		goto err_filp;

	file = filp->private_data;
	FUNC4(&file->filp, POISON_INUSE, sizeof(file->filp));
	file->authenticated = true;

	FUNC2(filp);
	FUNC2(inode);
	return file;

err_filp:
	FUNC2(filp);
err_inode:
	FUNC2(inode);
err:
	return FUNC0(err);
}