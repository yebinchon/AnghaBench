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
typedef  int u32 ;
struct vc4_dev {int dummy; } ;
struct vc4_crtc_state {scalar_t__ feed_txp; } ;
struct vc4_crtc {int channel; int /*<<< orphan*/  regset; TYPE_1__* pdev; } ;
struct drm_printer {int dummy; } ;
struct drm_display_mode {int flags; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {TYPE_2__* state; struct drm_device* dev; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_INTERLACE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SCALER_DISPBKGND_AUTOHS ; 
 int SCALER_DISPBKGND_GAMMA ; 
 int SCALER_DISPBKGND_INTERLACE ; 
 int /*<<< orphan*/  SCALER_DISPCTRL ; 
 int /*<<< orphan*/  SCALER_DISPCTRL_DSP3_MUX ; 
 int SCALER_DISPCTRL_DSP3_MUX_MASK ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 struct drm_printer FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_printer*,int /*<<< orphan*/ *) ; 
 struct vc4_crtc* FUNC8 (struct drm_crtc*) ; 
 struct vc4_crtc_state* FUNC9 (TYPE_2__*) ; 
 struct vc4_dev* FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC13(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct vc4_dev *vc4 = FUNC10(dev);
	struct vc4_crtc *vc4_crtc = FUNC8(crtc);
	struct vc4_crtc_state *vc4_state = FUNC9(crtc->state);
	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
	bool interlace = mode->flags & DRM_MODE_FLAG_INTERLACE;
	bool debug_dump_regs = false;

	if (debug_dump_regs) {
		struct drm_printer p = FUNC6(&vc4_crtc->pdev->dev);
		FUNC4(&vc4_crtc->pdev->dev, "CRTC %d regs before:\n",
			 FUNC5(crtc));
		FUNC7(&p, &vc4_crtc->regset);
	}

	if (vc4_crtc->channel == 2) {
		u32 dispctrl;
		u32 dsp3_mux;

		/*
		 * SCALER_DISPCTRL_DSP3 = X, where X < 2 means 'connect DSP3 to
		 * FIFO X'.
		 * SCALER_DISPCTRL_DSP3 = 3 means 'disable DSP 3'.
		 *
		 * DSP3 is connected to FIFO2 unless the transposer is
		 * enabled. In this case, FIFO 2 is directly accessed by the
		 * TXP IP, and we need to disable the FIFO2 -> pixelvalve1
		 * route.
		 */
		if (vc4_state->feed_txp)
			dsp3_mux = FUNC3(3, SCALER_DISPCTRL_DSP3_MUX);
		else
			dsp3_mux = FUNC3(2, SCALER_DISPCTRL_DSP3_MUX);

		dispctrl = FUNC0(SCALER_DISPCTRL) &
			   ~SCALER_DISPCTRL_DSP3_MUX_MASK;
		FUNC1(SCALER_DISPCTRL, dispctrl | dsp3_mux);
	}

	if (!vc4_state->feed_txp)
		FUNC11(crtc);

	FUNC1(FUNC2(vc4_crtc->channel),
		  SCALER_DISPBKGND_AUTOHS |
		  SCALER_DISPBKGND_GAMMA |
		  (interlace ? SCALER_DISPBKGND_INTERLACE : 0));

	/* Reload the LUT, since the SRAMs would have been disabled if
	 * all CRTCs had SCALER_DISPBKGND_GAMMA unset at once.
	 */
	FUNC12(crtc);

	if (debug_dump_regs) {
		struct drm_printer p = FUNC6(&vc4_crtc->pdev->dev);
		FUNC4(&vc4_crtc->pdev->dev, "CRTC %d regs after:\n",
			 FUNC5(crtc));
		FUNC7(&p, &vc4_crtc->regset);
	}
}