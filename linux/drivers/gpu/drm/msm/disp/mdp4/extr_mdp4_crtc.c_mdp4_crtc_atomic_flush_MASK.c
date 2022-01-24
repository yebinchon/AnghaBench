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
struct mdp4_crtc {int /*<<< orphan*/ * event; int /*<<< orphan*/  name; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PENDING_FLIP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp4_crtc* FUNC7 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC8(struct drm_crtc *crtc,
				   struct drm_crtc_state *old_crtc_state)
{
	struct mdp4_crtc *mdp4_crtc = FUNC7(crtc);
	struct drm_device *dev = crtc->dev;
	unsigned long flags;

	FUNC0("%s: event: %p", mdp4_crtc->name, crtc->state->event);

	FUNC1(mdp4_crtc->event);

	FUNC5(&dev->event_lock, flags);
	mdp4_crtc->event = crtc->state->event;
	crtc->state->event = NULL;
	FUNC6(&dev->event_lock, flags);

	FUNC2(crtc);
	FUNC3(crtc);
	FUNC4(crtc, PENDING_FLIP);
}