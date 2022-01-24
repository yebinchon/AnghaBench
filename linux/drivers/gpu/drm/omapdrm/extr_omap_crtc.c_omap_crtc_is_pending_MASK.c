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
struct omap_crtc {int pending; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct omap_crtc* FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static bool FUNC3(struct drm_crtc *crtc)
{
	struct omap_crtc *omap_crtc = FUNC2(crtc);
	unsigned long flags;
	bool pending;

	FUNC0(&crtc->dev->event_lock, flags);
	pending = omap_crtc->pending;
	FUNC1(&crtc->dev->event_lock, flags);

	return pending;
}