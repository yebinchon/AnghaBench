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
struct file {int dummy; } ;
typedef  int (* drm_ioctl_compat_t ) (struct file*,unsigned int,unsigned long) ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int DRM_COMMAND_BASE ; 
 unsigned int FUNC1 (unsigned int) ; 
 long FUNC2 (struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  mga_compat_ioctls ; 
 int FUNC3 (struct file*,unsigned int,unsigned long) ; 
 int FUNC4 (struct file*,unsigned int,unsigned long) ; 
 int FUNC5 (struct file*,unsigned int,unsigned long) ; 

long FUNC6(struct file *filp, unsigned int cmd,
			 unsigned long arg)
{
	unsigned int nr = FUNC1(cmd);
	drm_ioctl_compat_t *fn = NULL;
	int ret;

	if (nr < DRM_COMMAND_BASE)
		return FUNC2(filp, cmd, arg);

#if 0
	if (nr < DRM_COMMAND_BASE + ARRAY_SIZE(mga_compat_ioctls))
		fn = nouveau_compat_ioctls[nr - DRM_COMMAND_BASE];
#endif
	if (fn != NULL)
		ret = (*fn)(filp, cmd, arg);
	else
		ret = FUNC4(filp, cmd, arg);

	return ret;
}