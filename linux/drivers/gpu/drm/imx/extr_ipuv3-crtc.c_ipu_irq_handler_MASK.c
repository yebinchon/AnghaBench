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
struct ipu_plane {int /*<<< orphan*/  base; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct ipu_crtc {int /*<<< orphan*/ * event; struct ipu_plane** plane; struct drm_crtc base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int FUNC0 (struct ipu_plane**) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct ipu_crtc *ipu_crtc = dev_id;
	struct drm_crtc *crtc = &ipu_crtc->base;
	unsigned long flags;
	int i;

	FUNC1(crtc);

	if (ipu_crtc->event) {
		for (i = 0; i < FUNC0(ipu_crtc->plane); i++) {
			struct ipu_plane *plane = ipu_crtc->plane[i];

			if (!plane)
				continue;

			if (FUNC4(&plane->base))
				break;
		}

		if (i == FUNC0(ipu_crtc->plane)) {
			FUNC5(&crtc->dev->event_lock, flags);
			FUNC2(crtc, ipu_crtc->event);
			ipu_crtc->event = NULL;
			FUNC3(crtc);
			FUNC6(&crtc->dev->event_lock, flags);
		}
	}

	return IRQ_HANDLED;
}