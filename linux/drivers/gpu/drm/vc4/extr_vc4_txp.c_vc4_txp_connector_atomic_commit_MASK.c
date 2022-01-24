#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vc4_txp {int /*<<< orphan*/  connector; } ;
struct drm_gem_cma_object {int paddr; } ;
struct drm_framebuffer {int* offsets; int* pitches; TYPE_4__* format; } ;
struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct drm_connector_state {TYPE_3__* writeback_job; TYPE_2__* crtc; } ;
struct drm_connector {int dummy; } ;
struct TYPE_8__ {scalar_t__ format; scalar_t__ has_alpha; } ;
struct TYPE_7__ {struct drm_framebuffer* fb; } ;
struct TYPE_6__ {TYPE_1__* state; } ;
struct TYPE_5__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int TXP_ALPHA_ENABLE ; 
 int /*<<< orphan*/  TXP_BYTE_ENABLE ; 
 int /*<<< orphan*/  TXP_DIM ; 
 int /*<<< orphan*/  TXP_DST_CTRL ; 
 int /*<<< orphan*/  TXP_DST_PITCH ; 
 int /*<<< orphan*/  TXP_DST_PTR ; 
 int TXP_EI ; 
 int /*<<< orphan*/  TXP_FORMAT ; 
 int TXP_GO ; 
 int /*<<< orphan*/  TXP_HEIGHT ; 
 int TXP_VSTART_AT_EOF ; 
 int /*<<< orphan*/  TXP_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 struct vc4_txp* FUNC4 (struct drm_connector*) ; 
 struct drm_gem_cma_object* FUNC5 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 scalar_t__* drm_fmts ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct drm_connector_state*) ; 
 int* txp_fmts ; 

__attribute__((used)) static void FUNC7(struct drm_connector *conn,
					struct drm_connector_state *conn_state)
{
	struct vc4_txp *txp = FUNC4(conn);
	struct drm_gem_cma_object *gem;
	struct drm_display_mode *mode;
	struct drm_framebuffer *fb;
	u32 ctrl;
	int i;

	if (FUNC3(!conn_state->writeback_job))
		return;

	mode = &conn_state->crtc->state->adjusted_mode;
	fb = conn_state->writeback_job->fb;

	for (i = 0; i < FUNC0(drm_fmts); i++) {
		if (fb->format->format == drm_fmts[i])
			break;
	}

	if (FUNC3(i == FUNC0(drm_fmts)))
		return;

	ctrl = TXP_GO | TXP_VSTART_AT_EOF | TXP_EI |
	       FUNC2(0xf, TXP_BYTE_ENABLE) |
	       FUNC2(txp_fmts[i], TXP_FORMAT);

	if (fb->format->has_alpha)
		ctrl |= TXP_ALPHA_ENABLE;

	gem = FUNC5(fb, 0);
	FUNC1(TXP_DST_PTR, gem->paddr + fb->offsets[0]);
	FUNC1(TXP_DST_PITCH, fb->pitches[0]);
	FUNC1(TXP_DIM,
		  FUNC2(mode->hdisplay, TXP_WIDTH) |
		  FUNC2(mode->vdisplay, TXP_HEIGHT));

	FUNC1(TXP_DST_CTRL, ctrl);

	FUNC6(&txp->connector, conn_state);
}