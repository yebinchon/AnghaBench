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
struct drm_minor {int /*<<< orphan*/  dev; int /*<<< orphan*/  debugfs_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_minor*) ; 
 int /*<<< orphan*/  sti_drm_dbg_list ; 
 int /*<<< orphan*/  sti_drm_fps_fops ; 

__attribute__((used)) static int FUNC5(struct drm_minor *minor)
{
	int ret;

	ret = FUNC4(sti_drm_dbg_list,
				       FUNC0(sti_drm_dbg_list),
				       minor->debugfs_root, minor);
	if (ret)
		goto err;

	FUNC3("fps_show", S_IRUGO | S_IWUSR, minor->debugfs_root,
			    minor->dev, &sti_drm_fps_fops);

	FUNC2("%s: debugfs installed\n", DRIVER_NAME);
	return 0;
err:
	FUNC1("%s: cannot install debugfs\n", DRIVER_NAME);
	return ret;
}