#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct file {struct drm_file* private_data; } ;
struct drm_file {int /*<<< orphan*/  authenticated; TYPE_2__* minor; } ;
typedef  int (* drm_ioctl_compat_t ) (struct file*,unsigned int,unsigned long) ;
struct TYPE_7__ {int (* fn ) (struct file*,unsigned int,unsigned long) ;int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__* kdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  devt; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_3__*) ; 
 unsigned int DRM_COMMAND_BASE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  current ; 
 long FUNC3 (struct file*,unsigned int,unsigned long) ; 
 long FUNC4 (struct file*,unsigned int,unsigned long) ; 
 TYPE_3__* mga_compat_ioctls ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

long FUNC8(struct file *filp, unsigned int cmd, unsigned long arg)
{
	unsigned int nr = FUNC2(cmd);
	struct drm_file *file_priv = filp->private_data;
	drm_ioctl_compat_t *fn = NULL;
	int ret;

	if (nr < DRM_COMMAND_BASE)
		return FUNC3(filp, cmd, arg);

	if (nr >= DRM_COMMAND_BASE + FUNC0(mga_compat_ioctls))
		return FUNC4(filp, cmd, arg);

	fn = &mga_compat_ioctls[nr - DRM_COMMAND_BASE].fn;
	if (!fn)
		return FUNC4(filp, cmd, arg);

	FUNC1("pid=%d, dev=0x%lx, auth=%d, %s\n",
		  FUNC7(current),
		  (long)FUNC5(file_priv->minor->kdev->devt),
		  file_priv->authenticated,
		  mga_compat_ioctls[nr - DRM_COMMAND_BASE].name);
	ret = (*fn) (filp, cmd, arg);
	if (ret)
		FUNC1("ret = %d\n", ret);
	return ret;
}