#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_7__* cursor; TYPE_3__* primary; int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_8__ base; TYPE_4__* config; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {TYPE_5__* format; } ;
struct drm_display_mode {int crtc_clock; int crtc_htotal; } ;
struct TYPE_18__ {int guard_size; int fifo_size; int max_wm; int /*<<< orphan*/  cacheline_size; } ;
struct TYPE_16__ {TYPE_6__* state; } ;
struct TYPE_15__ {int crtc_w; } ;
struct TYPE_14__ {int* cpp; } ;
struct TYPE_10__ {struct drm_display_mode adjusted_mode; } ;
struct TYPE_13__ {int pipe_src_w; TYPE_1__ base; } ;
struct TYPE_12__ {TYPE_2__* state; } ;
struct TYPE_11__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURSORA ; 
 int /*<<< orphan*/  CURSORB ; 
 int /*<<< orphan*/  CURSOR_SR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  DSPFW1 ; 
 int /*<<< orphan*/  DSPFW2 ; 
 int /*<<< orphan*/  DSPFW3 ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I915_FIFO_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int I965_FIFO_SIZE ; 
 int /*<<< orphan*/  PLANEA ; 
 int /*<<< orphan*/  PLANEB ; 
 int /*<<< orphan*/  PLANEC_OLD ; 
 int /*<<< orphan*/  SR ; 
 TYPE_9__ i965_cursor_wm_info ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 
 int FUNC5 (int,int,int,int,int const) ; 
 struct intel_crtc* FUNC6 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct intel_crtc *unused_crtc)
{
	struct drm_i915_private *dev_priv = FUNC7(unused_crtc->base.dev);
	struct intel_crtc *crtc;
	int srwm = 1;
	int cursor_sr = 16;
	bool cxsr_enabled;

	/* Calc sr entries for one plane configs */
	crtc = FUNC6(dev_priv);
	if (crtc) {
		/* self-refresh has much higher latency */
		static const int sr_latency_ns = 12000;
		const struct drm_display_mode *adjusted_mode =
			&crtc->config->base.adjusted_mode;
		const struct drm_framebuffer *fb =
			crtc->base.primary->state->fb;
		int clock = adjusted_mode->crtc_clock;
		int htotal = adjusted_mode->crtc_htotal;
		int hdisplay = crtc->config->pipe_src_w;
		int cpp = fb->format->cpp[0];
		int entries;

		entries = FUNC5(clock, htotal,
					   hdisplay, cpp, sr_latency_ns / 100);
		entries = FUNC0(entries, I915_FIFO_LINE_SIZE);
		srwm = I965_FIFO_SIZE - entries;
		if (srwm < 0)
			srwm = 1;
		srwm &= 0x1ff;
		FUNC1("self-refresh entries: %d, wm: %d\n",
			      entries, srwm);

		entries = FUNC5(clock, htotal,
					   crtc->base.cursor->state->crtc_w, 4,
					   sr_latency_ns / 100);
		entries = FUNC0(entries,
				       i965_cursor_wm_info.cacheline_size) +
			i965_cursor_wm_info.guard_size;

		cursor_sr = i965_cursor_wm_info.fifo_size - entries;
		if (cursor_sr > i965_cursor_wm_info.max_wm)
			cursor_sr = i965_cursor_wm_info.max_wm;

		FUNC1("self-refresh watermark: display plane %d "
			      "cursor %d\n", srwm, cursor_sr);

		cxsr_enabled = true;
	} else {
		cxsr_enabled = false;
		/* Turn off self refresh if both pipes are enabled */
		FUNC4(dev_priv, false);
	}

	FUNC1("Setting FIFO watermarks - A: 8, B: 8, C: 8, SR %d\n",
		      srwm);

	/* 965 has limitations... */
	FUNC3(DSPFW1, FUNC2(srwm, SR) |
		   FUNC2(8, CURSORB) |
		   FUNC2(8, PLANEB) |
		   FUNC2(8, PLANEA));
	FUNC3(DSPFW2, FUNC2(8, CURSORA) |
		   FUNC2(8, PLANEC_OLD));
	/* update cursor SR watermark */
	FUNC3(DSPFW3, FUNC2(cursor_sr, CURSOR_SR));

	if (cxsr_enabled)
		FUNC4(dev_priv, true);
}