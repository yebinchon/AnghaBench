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
struct drm_syncobj {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int FUNC1 (struct file*) ; 
 struct file* FUNC2 (char*,int /*<<< orphan*/ *,struct drm_syncobj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_syncobj_file_fops ; 
 int /*<<< orphan*/  FUNC3 (struct drm_syncobj*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct file*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(struct drm_syncobj *syncobj, int *p_fd)
{
	struct file *file;
	int fd;

	fd = FUNC5(O_CLOEXEC);
	if (fd < 0)
		return fd;

	file = FUNC2("syncobj_file",
				  &drm_syncobj_file_fops,
				  syncobj, 0);
	if (FUNC0(file)) {
		FUNC6(fd);
		return FUNC1(file);
	}

	FUNC3(syncobj);
	FUNC4(fd, file);

	*p_fd = fd;
	return 0;
}