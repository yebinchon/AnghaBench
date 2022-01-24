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
typedef  int /*<<< orphan*/  u32 ;
struct vc4_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ start; } ;
struct vc4_crtc_state {scalar_t__ feed_txp; TYPE_1__ mm; } ;
struct drm_crtc {int /*<<< orphan*/  state; struct drm_device* dev; } ;
struct vc4_crtc {int /*<<< orphan*/  channel; int /*<<< orphan*/ * event; struct drm_crtc base; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vc4_crtc_state* FUNC6 (int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct vc4_crtc *vc4_crtc)
{
	struct drm_crtc *crtc = &vc4_crtc->base;
	struct drm_device *dev = crtc->dev;
	struct vc4_dev *vc4 = FUNC7(dev);
	struct vc4_crtc_state *vc4_state = FUNC6(crtc->state);
	u32 chan = vc4_crtc->channel;
	unsigned long flags;

	FUNC4(&dev->event_lock, flags);
	if (vc4_crtc->event &&
	    (vc4_state->mm.start == FUNC0(FUNC1(chan)) ||
	     vc4_state->feed_txp)) {
		FUNC2(crtc, vc4_crtc->event);
		vc4_crtc->event = NULL;
		FUNC3(crtc);

		/* Wait for the page flip to unmask the underrun to ensure that
		 * the display list was updated by the hardware. Before that
		 * happens, the HVS will be using the previous display list with
		 * the CRTC and encoder already reconfigured, leading to
		 * underruns. This can be seen when reconfiguring the CRTC.
		 */
		FUNC8(dev, vc4_crtc->channel);
	}
	FUNC5(&dev->event_lock, flags);
}