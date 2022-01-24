#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vkms_output {int /*<<< orphan*/  lock; int /*<<< orphan*/  composer_state; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * event; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 struct vkms_output* FUNC2 (struct drm_crtc*) ; 
 scalar_t__ FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(struct drm_crtc *crtc,
				   struct drm_crtc_state *old_crtc_state)
{
	struct vkms_output *vkms_output = FUNC2(crtc);

	if (crtc->state->event) {
		FUNC4(&crtc->dev->event_lock);

		if (FUNC3(crtc) != 0)
			FUNC1(crtc, crtc->state->event);
		else
			FUNC0(crtc, crtc->state->event);

		FUNC5(&crtc->dev->event_lock);

		crtc->state->event = NULL;
	}

	vkms_output->composer_state = FUNC7(crtc->state);

	FUNC6(&vkms_output->lock);
}