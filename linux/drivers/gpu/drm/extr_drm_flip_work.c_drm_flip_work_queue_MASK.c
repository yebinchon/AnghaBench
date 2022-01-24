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
struct drm_flip_work {int /*<<< orphan*/  (* func ) (struct drm_flip_work*,void*) ;int /*<<< orphan*/  name; } ;
struct drm_flip_task {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 () ; 
 struct drm_flip_task* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_flip_work*,struct drm_flip_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_flip_work*,void*) ; 

void FUNC5(struct drm_flip_work *work, void *val)
{
	struct drm_flip_task *task;

	task = FUNC2(val,
				FUNC1() ? GFP_KERNEL : GFP_ATOMIC);
	if (task) {
		FUNC3(work, task);
	} else {
		FUNC0("%s could not allocate task!\n", work->name);
		work->func(work, val);
	}
}