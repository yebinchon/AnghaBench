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
struct tilcdc_crtc {int /*<<< orphan*/  enable_lock; int /*<<< orphan*/  irq_lock; struct drm_framebuffer* next_fb; int /*<<< orphan*/  hvtotal_us; int /*<<< orphan*/  last_vblank; scalar_t__ enabled; struct drm_pending_vblank_event* event; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ TILCDC_VBLANK_SAFETY_THRESHOLD_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*,struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tilcdc_crtc* FUNC10 (struct drm_crtc*) ; 

int FUNC11(struct drm_crtc *crtc,
		struct drm_framebuffer *fb,
		struct drm_pending_vblank_event *event)
{
	struct tilcdc_crtc *tilcdc_crtc = FUNC10(crtc);
	struct drm_device *dev = crtc->dev;

	if (tilcdc_crtc->event) {
		FUNC0(dev->dev, "already pending page flip!\n");
		return -EBUSY;
	}

	tilcdc_crtc->event = event;

	FUNC5(&tilcdc_crtc->enable_lock);

	if (tilcdc_crtc->enabled) {
		unsigned long flags;
		ktime_t next_vblank;
		s64 tdiff;

		FUNC8(&tilcdc_crtc->irq_lock, flags);

		next_vblank = FUNC1(tilcdc_crtc->last_vblank,
					   tilcdc_crtc->hvtotal_us);
		tdiff = FUNC4(FUNC3(next_vblank, FUNC2()));

		if (tdiff < TILCDC_VBLANK_SAFETY_THRESHOLD_US)
			tilcdc_crtc->next_fb = fb;
		else
			FUNC7(crtc, fb);

		FUNC9(&tilcdc_crtc->irq_lock, flags);
	}

	FUNC6(&tilcdc_crtc->enable_lock);

	return 0;
}