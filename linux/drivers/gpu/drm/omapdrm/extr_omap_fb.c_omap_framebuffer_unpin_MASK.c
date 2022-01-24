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
struct plane {scalar_t__ dma_addr; } ;
struct omap_framebuffer {scalar_t__ pin_count; int /*<<< orphan*/  lock; struct plane* planes; } ;
struct drm_framebuffer {int /*<<< orphan*/ * obj; TYPE_1__* format; } ;
struct TYPE_2__ {int num_planes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct omap_framebuffer* FUNC3 (struct drm_framebuffer*) ; 

void FUNC4(struct drm_framebuffer *fb)
{
	struct omap_framebuffer *omap_fb = FUNC3(fb);
	int i, n = fb->format->num_planes;

	FUNC0(&omap_fb->lock);

	omap_fb->pin_count--;

	if (omap_fb->pin_count > 0) {
		FUNC1(&omap_fb->lock);
		return;
	}

	for (i = 0; i < n; i++) {
		struct plane *plane = &omap_fb->planes[i];
		FUNC2(fb->obj[i]);
		plane->dma_addr = 0;
	}

	FUNC1(&omap_fb->lock);
}