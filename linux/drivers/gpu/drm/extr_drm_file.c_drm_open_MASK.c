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
struct file {int /*<<< orphan*/  f_mapping; } ;
struct drm_minor {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  open_count; TYPE_1__* anon_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_minor*) ; 
 int FUNC1 (struct drm_minor*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (struct drm_device*) ; 
 struct drm_minor* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_minor*) ; 
 int FUNC6 (struct file*,struct drm_minor*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

int FUNC8(struct inode *inode, struct file *filp)
{
	struct drm_device *dev;
	struct drm_minor *minor;
	int retcode;
	int need_setup = 0;

	minor = FUNC4(FUNC7(inode));
	if (FUNC0(minor))
		return FUNC1(minor);

	dev = minor->dev;
	if (!dev->open_count++)
		need_setup = 1;

	/* share address_space across all char-devs of a single device */
	filp->f_mapping = dev->anon_inode->i_mapping;

	retcode = FUNC6(filp, minor);
	if (retcode)
		goto err_undo;
	if (need_setup) {
		retcode = FUNC3(dev);
		if (retcode) {
			FUNC2(filp);
			goto err_undo;
		}
	}
	return 0;

err_undo:
	dev->open_count--;
	FUNC5(minor);
	return retcode;
}