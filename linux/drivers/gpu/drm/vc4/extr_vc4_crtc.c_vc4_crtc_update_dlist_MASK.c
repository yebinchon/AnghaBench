#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vc4_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  start; } ;
struct vc4_crtc_state {TYPE_2__ mm; scalar_t__ txp_armed; int /*<<< orphan*/  feed_txp; } ;
struct vc4_crtc {int /*<<< orphan*/  channel; TYPE_1__* event; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct drm_crtc {TYPE_3__* state; struct drm_device* dev; } ;
struct TYPE_6__ {TYPE_1__* event; } ;
struct TYPE_4__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 scalar_t__ FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vc4_crtc* FUNC7 (struct drm_crtc*) ; 
 struct vc4_crtc_state* FUNC8 (TYPE_3__*) ; 
 struct vc4_dev* FUNC9 (struct drm_device*) ; 

__attribute__((used)) static void FUNC10(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct vc4_dev *vc4 = FUNC9(dev);
	struct vc4_crtc *vc4_crtc = FUNC7(crtc);
	struct vc4_crtc_state *vc4_state = FUNC8(crtc->state);

	if (crtc->state->event) {
		unsigned long flags;

		crtc->state->event->pipe = FUNC3(crtc);

		FUNC2(FUNC4(crtc) != 0);

		FUNC5(&dev->event_lock, flags);

		if (!vc4_state->feed_txp || vc4_state->txp_armed) {
			vc4_crtc->event = crtc->state->event;
			crtc->state->event = NULL;
		}

		FUNC0(FUNC1(vc4_crtc->channel),
			  vc4_state->mm.start);

		FUNC6(&dev->event_lock, flags);
	} else {
		FUNC0(FUNC1(vc4_crtc->channel),
			  vc4_state->mm.start);
	}
}