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
typedef  void* uint32_t ;
struct drm_syncobj_wait {void* first_signaled; int /*<<< orphan*/  flags; int /*<<< orphan*/  count_handles; int /*<<< orphan*/  timeout_nsec; } ;
struct drm_syncobj_timeline_wait {void* first_signaled; int /*<<< orphan*/  flags; int /*<<< orphan*/  count_handles; int /*<<< orphan*/  points; int /*<<< orphan*/  timeout_nsec; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 long FUNC0 (struct drm_syncobj**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,void**) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev,
				  struct drm_file *file_private,
				  struct drm_syncobj_wait *wait,
				  struct drm_syncobj_timeline_wait *timeline_wait,
				  struct drm_syncobj **syncobjs, bool timeline)
{
	signed long timeout = 0;
	uint32_t first = ~0;

	if (!timeline) {
		timeout = FUNC1(wait->timeout_nsec);
		timeout = FUNC0(syncobjs,
							 NULL,
							 wait->count_handles,
							 wait->flags,
							 timeout, &first);
		if (timeout < 0)
			return timeout;
		wait->first_signaled = first;
	} else {
		timeout = FUNC1(timeline_wait->timeout_nsec);
		timeout = FUNC0(syncobjs,
							 FUNC2(timeline_wait->points),
							 timeline_wait->count_handles,
							 timeline_wait->flags,
							 timeout, &first);
		if (timeout < 0)
			return timeout;
		timeline_wait->first_signaled = first;
	}
	return 0;
}