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
struct fb_ops {int dummy; } ;
struct fb_info {struct fb_ops* fbops; void* screen_buffer; scalar_t__ fbdefio; } ;
struct drm_fb_helper {int /*<<< orphan*/  buffer; int /*<<< orphan*/  dev; struct fb_info* fbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_ops*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static void FUNC5(struct drm_fb_helper *fb_helper)
{
	struct fb_info *fbi = fb_helper->fbdev;
	struct fb_ops *fbops = NULL;
	void *shadow = NULL;

	if (!fb_helper->dev)
		return;

	if (fbi && fbi->fbdefio) {
		FUNC2(fbi);
		shadow = fbi->screen_buffer;
		fbops = fbi->fbops;
	}

	FUNC1(fb_helper);

	if (shadow) {
		FUNC4(shadow);
		FUNC3(fbops);
	}

	FUNC0(fb_helper->buffer);
}