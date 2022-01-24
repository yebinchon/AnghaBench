#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* fbdev; } ;
struct vbox_framebuffer {int /*<<< orphan*/  base; int /*<<< orphan*/ * obj; } ;
struct vbox_private {TYPE_2__ fb_helper; struct vbox_framebuffer afb; } ;
struct drm_gem_vram_object {int dummy; } ;
struct TYPE_4__ {scalar_t__ fbdefio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_vram_object*) ; 
 struct drm_gem_vram_object* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_gem_vram_object*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(struct vbox_private *vbox)
{
	struct vbox_framebuffer *afb = &vbox->afb;

#ifdef CONFIG_DRM_KMS_FB_HELPER
	if (vbox->fb_helper.fbdev && vbox->fb_helper.fbdev->fbdefio)
		fb_deferred_io_cleanup(vbox->fb_helper.fbdev);
#endif

	FUNC1(&vbox->fb_helper);

	if (afb->obj) {
		struct drm_gem_vram_object *gbo = FUNC6(afb->obj);

		FUNC5(gbo);
		FUNC7(gbo);

		FUNC4(afb->obj);
		afb->obj = NULL;
	}
	FUNC0(&vbox->fb_helper);

	FUNC3(&afb->base);
	FUNC2(&afb->base);
}