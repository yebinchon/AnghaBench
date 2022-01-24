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
typedef  int /*<<< orphan*/  u32 ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int /*<<< orphan*/  syncobj_table_lock; int /*<<< orphan*/  syncobj_idr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_syncobj*) ; 
 struct drm_syncobj* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct drm_file *file_private,
			       u32 handle)
{
	struct drm_syncobj *syncobj;

	FUNC2(&file_private->syncobj_table_lock);
	syncobj = FUNC1(&file_private->syncobj_idr, handle);
	FUNC3(&file_private->syncobj_table_lock);

	if (!syncobj)
		return -EINVAL;

	FUNC0(syncobj);
	return 0;
}