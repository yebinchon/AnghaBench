#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sti_cursor {int dummy; } ;
struct drm_minor {int /*<<< orphan*/  debugfs_root; } ;
struct TYPE_4__ {struct sti_cursor* data; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* cursor_debugfs_files ; 
 int FUNC1 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,struct drm_minor*) ; 

__attribute__((used)) static int FUNC2(struct sti_cursor *cursor,
			       struct drm_minor *minor)
{
	unsigned int i;

	for (i = 0; i < FUNC0(cursor_debugfs_files); i++)
		cursor_debugfs_files[i].data = cursor;

	return FUNC1(cursor_debugfs_files,
					FUNC0(cursor_debugfs_files),
					minor->debugfs_root, minor);
}