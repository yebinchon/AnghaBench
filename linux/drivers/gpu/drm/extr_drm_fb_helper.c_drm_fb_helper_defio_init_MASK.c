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
struct fb_ops {int /*<<< orphan*/  deferred_io; int /*<<< orphan*/  delay; } ;
struct fb_info {struct fb_ops* fbops; struct fb_ops* fbdefio; } ;
struct fb_deferred_io {int /*<<< orphan*/  deferred_io; int /*<<< orphan*/  delay; } ;
struct drm_fb_helper {struct fb_info* fbdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  drm_fb_helper_deferred_io ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_ops*) ; 
 struct fb_ops* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct drm_fb_helper *fb_helper)
{
	struct fb_info *info = fb_helper->fbdev;
	struct fb_deferred_io *fbdefio;
	struct fb_ops *fbops;

	fbdefio = FUNC2(sizeof(*fbdefio), GFP_KERNEL);
	fbops = FUNC2(sizeof(*fbops), GFP_KERNEL);
	if (!fbdefio || !fbops) {
		FUNC1(fbdefio);
		FUNC1(fbops);
		return -ENOMEM;
	}

	info->fbdefio = fbdefio;
	fbdefio->delay = FUNC3(50);
	fbdefio->deferred_io = drm_fb_helper_deferred_io;

	*fbops = *info->fbops;
	info->fbops = fbops;

	FUNC0(info);

	return 0;
}