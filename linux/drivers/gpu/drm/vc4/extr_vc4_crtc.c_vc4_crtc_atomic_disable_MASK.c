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
struct vc4_crtc {int /*<<< orphan*/  channel; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int PV_VCONTROL_VIDEN ; 
 int /*<<< orphan*/  PV_V_CONTROL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int SCALER_DISPCTRLX_ENABLE ; 
 int SCALER_DISPCTRLX_RESET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int SCALER_DISPSTATX_EMPTY ; 
 int SCALER_DISPSTATX_FULL ; 
 int /*<<< orphan*/  SCALER_DISPSTATX_MODE ; 
 scalar_t__ SCALER_DISPSTATX_MODE_DISABLED ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vc4_crtc* FUNC14 (struct drm_crtc*) ; 
 struct vc4_dev* FUNC15 (struct drm_device*) ; 
 int FUNC16 (int,int) ; 

__attribute__((used)) static void FUNC17(struct drm_crtc *crtc,
				    struct drm_crtc_state *old_state)
{
	struct drm_device *dev = crtc->dev;
	struct vc4_dev *vc4 = FUNC15(dev);
	struct vc4_crtc *vc4_crtc = FUNC14(crtc);
	u32 chan = vc4_crtc->channel;
	int ret;
	FUNC11(dev);

	/* Disable vblank irq handling before crtc is disabled. */
	FUNC10(crtc);

	FUNC1(PV_V_CONTROL,
		   FUNC0(PV_V_CONTROL) & ~PV_VCONTROL_VIDEN);
	ret = FUNC16(!(FUNC0(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
	FUNC7(ret, "Timeout waiting for !PV_VCONTROL_VIDEN\n");

	if (FUNC2(FUNC4(chan)) &
	    SCALER_DISPCTRLX_ENABLE) {
		FUNC3(FUNC4(chan),
			  SCALER_DISPCTRLX_RESET);

		/* While the docs say that reset is self-clearing, it
		 * seems it doesn't actually.
		 */
		FUNC3(FUNC4(chan), 0);
	}

	/* Once we leave, the scaler should be disabled and its fifo empty. */

	FUNC8(FUNC2(FUNC4(chan)) & SCALER_DISPCTRLX_RESET);

	FUNC8(FUNC6(FUNC2(FUNC5(chan)),
				   SCALER_DISPSTATX_MODE) !=
		     SCALER_DISPSTATX_MODE_DISABLED);

	FUNC8((FUNC2(FUNC5(chan)) &
		      (SCALER_DISPSTATX_FULL | SCALER_DISPSTATX_EMPTY)) !=
		     SCALER_DISPSTATX_EMPTY);

	/*
	 * Make sure we issue a vblank event after disabling the CRTC if
	 * someone was waiting it.
	 */
	if (crtc->state->event) {
		unsigned long flags;

		FUNC12(&dev->event_lock, flags);
		FUNC9(crtc, crtc->state->event);
		crtc->state->event = NULL;
		FUNC13(&dev->event_lock, flags);
	}
}