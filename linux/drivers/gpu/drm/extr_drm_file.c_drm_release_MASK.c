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
struct file {struct drm_file* private_data; } ;
struct drm_minor {struct drm_device* dev; } ;
struct drm_file {struct drm_minor* minor; } ;
struct drm_device {int /*<<< orphan*/  open_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  drm_global_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_minor*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct inode *inode, struct file *filp)
{
	struct drm_file *file_priv = filp->private_data;
	struct drm_minor *minor = file_priv->minor;
	struct drm_device *dev = minor->dev;

	FUNC4(&drm_global_mutex);

	FUNC0("open_count = %d\n", dev->open_count);

	FUNC1(filp);

	if (!--dev->open_count)
		FUNC2(dev);

	FUNC5(&drm_global_mutex);

	FUNC3(minor);

	return 0;
}