#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ingenic_drm {TYPE_5__* dma_hwdesc; int /*<<< orphan*/  map; int /*<<< orphan*/  pix_clk; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_framebuffer {TYPE_3__* format; } ;
struct drm_format_info {int dummy; } ;
struct TYPE_10__ {int clock; } ;
struct drm_crtc_state {struct drm_pending_vblank_event* event; TYPE_4__ adjusted_mode; int /*<<< orphan*/  mode; } ;
struct drm_crtc {TYPE_6__* dev; TYPE_2__* primary; struct drm_crtc_state* state; } ;
struct TYPE_12__ {int /*<<< orphan*/  event_lock; } ;
struct TYPE_11__ {int /*<<< orphan*/  next; } ;
struct TYPE_9__ {int /*<<< orphan*/  format; } ;
struct TYPE_8__ {TYPE_1__* state; } ;
struct TYPE_7__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_REG_LCD_DA0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 struct ingenic_drm* FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 scalar_t__ FUNC5 (struct drm_crtc*) ; 
 struct drm_format_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ingenic_drm*,struct drm_format_info const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ingenic_drm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct drm_crtc *crtc,
					  struct drm_crtc_state *oldstate)
{
	struct ingenic_drm *priv = FUNC3(crtc);
	struct drm_crtc_state *state = crtc->state;
	struct drm_pending_vblank_event *event = state->event;
	struct drm_framebuffer *drm_fb = crtc->primary->state->fb;
	const struct drm_format_info *finfo;

	if (FUNC1(state)) {
		finfo = FUNC6(drm_fb->format->format);

		FUNC8(priv, &state->mode);
		FUNC7(priv, finfo);

		FUNC0(priv->pix_clk, state->adjusted_mode.clock * 1000);

		FUNC9(priv->map, JZ_REG_LCD_DA0, priv->dma_hwdesc->next);
	}

	if (event) {
		state->event = NULL;

		FUNC10(&crtc->dev->event_lock);
		if (FUNC5(crtc) == 0)
			FUNC2(crtc, event);
		else
			FUNC4(crtc, event);
		FUNC11(&crtc->dev->event_lock);
	}
}