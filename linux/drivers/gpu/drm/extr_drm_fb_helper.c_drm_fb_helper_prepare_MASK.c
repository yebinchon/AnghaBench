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
struct drm_fb_helper_funcs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  y1; int /*<<< orphan*/  x1; } ;
struct drm_fb_helper {struct drm_device* dev; struct drm_fb_helper_funcs const* funcs; int /*<<< orphan*/  lock; TYPE_1__ dirty_clip; int /*<<< orphan*/  dirty_work; int /*<<< orphan*/  resume_work; int /*<<< orphan*/  dirty_lock; int /*<<< orphan*/  kernel_fb_list; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_fb_helper_dirty_work ; 
 int /*<<< orphan*/  drm_fb_helper_resume_worker ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_device *dev, struct drm_fb_helper *helper,
			   const struct drm_fb_helper_funcs *funcs)
{
	FUNC0(&helper->kernel_fb_list);
	FUNC3(&helper->dirty_lock);
	FUNC1(&helper->resume_work, drm_fb_helper_resume_worker);
	FUNC1(&helper->dirty_work, drm_fb_helper_dirty_work);
	helper->dirty_clip.x1 = helper->dirty_clip.y1 = ~0;
	FUNC2(&helper->lock);
	helper->funcs = funcs;
	helper->dev = dev;
}