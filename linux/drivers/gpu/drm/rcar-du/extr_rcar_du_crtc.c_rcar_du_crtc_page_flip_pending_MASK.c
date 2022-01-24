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
struct TYPE_2__ {struct drm_device* dev; } ;
struct rcar_du_crtc {int /*<<< orphan*/ * event; TYPE_1__ crtc; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC2(struct rcar_du_crtc *rcrtc)
{
	struct drm_device *dev = rcrtc->crtc.dev;
	unsigned long flags;
	bool pending;

	FUNC0(&dev->event_lock, flags);
	pending = rcrtc->event != NULL;
	FUNC1(&dev->event_lock, flags);

	return pending;
}