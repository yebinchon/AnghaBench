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
struct sun4i_crtc {int /*<<< orphan*/ * event; int /*<<< orphan*/  crtc; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev,
					struct sun4i_crtc *scrtc)
{
	unsigned long flags;

	FUNC2(&dev->event_lock, flags);
	if (scrtc->event) {
		FUNC0(&scrtc->crtc, scrtc->event);
		FUNC1(&scrtc->crtc);
		scrtc->event = NULL;
	}
	FUNC3(&dev->event_lock, flags);
}