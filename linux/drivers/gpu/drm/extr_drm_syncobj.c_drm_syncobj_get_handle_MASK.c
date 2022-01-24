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
typedef  int u32 ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int /*<<< orphan*/  syncobj_table_lock; int /*<<< orphan*/  syncobj_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_syncobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_syncobj*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct drm_syncobj*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct drm_file *file_private,
			   struct drm_syncobj *syncobj, u32 *handle)
{
	int ret;

	/* take a reference to put in the idr */
	FUNC0(syncobj);

	FUNC3(GFP_KERNEL);
	FUNC5(&file_private->syncobj_table_lock);
	ret = FUNC2(&file_private->syncobj_idr, syncobj, 1, 0, GFP_NOWAIT);
	FUNC6(&file_private->syncobj_table_lock);

	FUNC4();

	if (ret < 0) {
		FUNC1(syncobj);
		return ret;
	}

	*handle = ret;
	return 0;
}