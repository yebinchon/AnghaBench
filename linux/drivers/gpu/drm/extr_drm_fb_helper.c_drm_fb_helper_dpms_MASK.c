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
struct fb_info {struct drm_fb_helper* par; } ;
struct drm_fb_helper {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fb_info *info, int dpms_mode)
{
	struct drm_fb_helper *fb_helper = info->par;

	FUNC1(&fb_helper->lock);
	FUNC0(&fb_helper->client, dpms_mode);
	FUNC2(&fb_helper->lock);
}