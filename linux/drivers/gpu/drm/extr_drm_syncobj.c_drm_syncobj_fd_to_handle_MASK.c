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
typedef  int u32 ;
struct fd {TYPE_1__* file; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int /*<<< orphan*/  syncobj_table_lock; int /*<<< orphan*/  syncobj_idr; } ;
struct TYPE_2__ {struct drm_syncobj* private_data; int /*<<< orphan*/ * f_op; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  drm_syncobj_file_fops ; 
 int /*<<< orphan*/  FUNC0 (struct drm_syncobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_syncobj*) ; 
 struct fd FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fd) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct drm_syncobj*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct drm_file *file_private,
				    int fd, u32 *handle)
{
	struct drm_syncobj *syncobj;
	struct fd f = FUNC2(fd);
	int ret;

	if (!f.file)
		return -EINVAL;

	if (f.file->f_op != &drm_syncobj_file_fops) {
		FUNC3(f);
		return -EINVAL;
	}

	/* take a reference to put in the idr */
	syncobj = f.file->private_data;
	FUNC0(syncobj);

	FUNC5(GFP_KERNEL);
	FUNC7(&file_private->syncobj_table_lock);
	ret = FUNC4(&file_private->syncobj_idr, syncobj, 1, 0, GFP_NOWAIT);
	FUNC8(&file_private->syncobj_table_lock);
	FUNC6();

	if (ret > 0) {
		*handle = ret;
		ret = 0;
	} else
		FUNC1(syncobj);

	FUNC3(f);
	return ret;
}