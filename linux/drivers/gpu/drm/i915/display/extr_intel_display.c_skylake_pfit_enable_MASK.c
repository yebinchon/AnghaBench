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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_8__ {int size; int pos; scalar_t__ enabled; } ;
struct intel_crtc_scaler_state {scalar_t__ scaler_id; TYPE_3__* scalers; } ;
struct TYPE_5__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int pipe_src_w; int pipe_src_h; TYPE_4__ pch_pfit; struct intel_crtc_scaler_state scaler_state; TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_7__ {int mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int PS_FILTER_MEDIUM ; 
 int PS_SCALER_EN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int) ; 
 struct drm_i915_private* FUNC11 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC12(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC11(crtc->base.dev);
	enum pipe pipe = crtc->pipe;
	const struct intel_crtc_scaler_state *scaler_state =
		&crtc_state->scaler_state;

	if (crtc_state->pch_pfit.enabled) {
		u16 uv_rgb_hphase, uv_rgb_vphase;
		int pfit_w, pfit_h, hscale, vscale;
		int id;

		if (FUNC9(crtc_state->scaler_state.scaler_id < 0))
			return;

		pfit_w = (crtc_state->pch_pfit.size >> 16) & 0xFFFF;
		pfit_h = crtc_state->pch_pfit.size & 0xFFFF;

		hscale = (crtc_state->pipe_src_w << 16) / pfit_w;
		vscale = (crtc_state->pipe_src_h << 16) / pfit_h;

		uv_rgb_hphase = FUNC10(1, hscale, false);
		uv_rgb_vphase = FUNC10(1, vscale, false);

		id = scaler_state->scaler_id;
		FUNC0(FUNC4(pipe, id), PS_SCALER_EN |
			PS_FILTER_MEDIUM | scaler_state->scalers[id].mode);
		FUNC1(FUNC6(pipe, id),
			      FUNC3(0) | FUNC2(uv_rgb_vphase));
		FUNC1(FUNC5(pipe, id),
			      FUNC3(0) | FUNC2(uv_rgb_hphase));
		FUNC0(FUNC7(pipe, id), crtc_state->pch_pfit.pos);
		FUNC0(FUNC8(pipe, id), crtc_state->pch_pfit.size);
	}
}