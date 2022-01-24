#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ len; } ;
struct fb_info {TYPE_2__ cmap; } ;
struct TYPE_6__ {int /*<<< orphan*/  funcs; } ;
struct drm_fb_helper {TYPE_3__ client; int /*<<< orphan*/  lock; int /*<<< orphan*/  kernel_fb_list; struct fb_info* fbdev; int /*<<< orphan*/  dirty_work; int /*<<< orphan*/  resume_work; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * fb_helper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  drm_fbdev_emulation ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  kernel_fb_helper_list ; 
 int /*<<< orphan*/  kernel_fb_helper_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysrq_drm_fb_helper_restore_op ; 
 int /*<<< orphan*/  FUNC9 (char,int /*<<< orphan*/ *) ; 

void FUNC10(struct drm_fb_helper *fb_helper)
{
	struct fb_info *info;

	if (!fb_helper)
		return;

	fb_helper->dev->fb_helper = NULL;

	if (!drm_fbdev_emulation)
		return;

	FUNC0(&fb_helper->resume_work);
	FUNC0(&fb_helper->dirty_work);

	info = fb_helper->fbdev;
	if (info) {
		if (info->cmap.len)
			FUNC2(&info->cmap);
		FUNC3(info);
	}
	fb_helper->fbdev = NULL;

	FUNC7(&kernel_fb_helper_lock);
	if (!FUNC5(&fb_helper->kernel_fb_list)) {
		FUNC4(&fb_helper->kernel_fb_list);
		if (FUNC5(&kernel_fb_helper_list))
			FUNC9('v', &sysrq_drm_fb_helper_restore_op);
	}
	FUNC8(&kernel_fb_helper_lock);

	FUNC6(&fb_helper->lock);

	if (!fb_helper->client.funcs)
		FUNC1(&fb_helper->client);
}