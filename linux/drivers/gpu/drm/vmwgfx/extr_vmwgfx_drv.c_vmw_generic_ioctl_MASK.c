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
struct file {struct drm_file* private_data; } ;
struct drm_ioctl_desc {unsigned int cmd; unsigned int flags; } ;
struct drm_file {TYPE_1__* minor; } ;
struct drm_device {TYPE_2__* driver; } ;
struct TYPE_4__ {unsigned int num_ioctls; } ;
struct TYPE_3__ {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 unsigned int DRM_COMMAND_BASE ; 
 unsigned int DRM_COMMAND_END ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int DRM_VMW_EXECBUF ; 
 unsigned int DRM_VMW_UPDATE_LAYOUT ; 
 long EACCES ; 
 long EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_file*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct drm_ioctl_desc* vmw_ioctls ; 

__attribute__((used)) static long FUNC6(struct file *filp, unsigned int cmd,
			      unsigned long arg,
			      long (*ioctl_func)(struct file *, unsigned int,
						 unsigned long))
{
	struct drm_file *file_priv = filp->private_data;
	struct drm_device *dev = file_priv->minor->dev;
	unsigned int nr = FUNC1(cmd);
	unsigned int flags;

	/*
	 * Do extra checking on driver private ioctls.
	 */

	if ((nr >= DRM_COMMAND_BASE) && (nr < DRM_COMMAND_END)
	    && (nr < DRM_COMMAND_BASE + dev->driver->num_ioctls)) {
		const struct drm_ioctl_desc *ioctl =
			&vmw_ioctls[nr - DRM_COMMAND_BASE];

		if (nr == DRM_COMMAND_BASE + DRM_VMW_EXECBUF) {
			return ioctl_func(filp, cmd, arg);
		} else if (nr == DRM_COMMAND_BASE + DRM_VMW_UPDATE_LAYOUT) {
			if (!FUNC4(file_priv) &&
			    !FUNC2(CAP_SYS_ADMIN))
				return -EACCES;
		}

		if (FUNC5(ioctl->cmd != cmd))
			goto out_io_encoding;

		flags = ioctl->flags;
	} else if (!FUNC3(nr, &flags))
		return -EINVAL;

	return ioctl_func(filp, cmd, arg);

out_io_encoding:
	FUNC0("Invalid command format, ioctl %d\n",
		  nr - DRM_COMMAND_BASE);

	return -EINVAL;
}