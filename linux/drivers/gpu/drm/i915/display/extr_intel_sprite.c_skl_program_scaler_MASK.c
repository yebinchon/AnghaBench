#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct intel_scaler {int mode; } ;
struct TYPE_15__ {int x1; int y1; } ;
struct TYPE_14__ {TYPE_4__* fb; TYPE_6__ dst; int /*<<< orphan*/  src; } ;
struct intel_plane_state {int scaler_id; TYPE_5__ base; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int pipe; int /*<<< orphan*/  id; TYPE_1__ base; } ;
struct TYPE_11__ {struct intel_scaler* scalers; } ;
struct intel_crtc_state {TYPE_2__ scaler_state; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_13__ {TYPE_3__* format; } ;
struct TYPE_12__ {int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PS_SCALER_EN ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_6__*) ; 
 int FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,int,int) ; 
 struct drm_i915_private* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(struct intel_plane *plane,
		   const struct intel_crtc_state *crtc_state,
		   const struct intel_plane_state *plane_state)
{
	struct drm_i915_private *dev_priv = FUNC16(plane->base.dev);
	enum pipe pipe = plane->pipe;
	int scaler_id = plane_state->scaler_id;
	const struct intel_scaler *scaler =
		&crtc_state->scaler_state.scalers[scaler_id];
	int crtc_x = plane_state->base.dst.x1;
	int crtc_y = plane_state->base.dst.y1;
	u32 crtc_w = FUNC12(&plane_state->base.dst);
	u32 crtc_h = FUNC11(&plane_state->base.dst);
	u16 y_hphase, uv_rgb_hphase;
	u16 y_vphase, uv_rgb_vphase;
	int hscale, vscale;

	hscale = FUNC9(&plane_state->base.src,
				      &plane_state->base.dst,
				      0, INT_MAX);
	vscale = FUNC10(&plane_state->base.src,
				      &plane_state->base.dst,
				      0, INT_MAX);

	/* TODO: handle sub-pixel coordinates */
	if (FUNC14(plane_state->base.fb->format->format) &&
	    !FUNC13(dev_priv, plane->id)) {
		y_hphase = FUNC15(1, hscale, false);
		y_vphase = FUNC15(1, vscale, false);

		/* MPEG2 chroma siting convention */
		uv_rgb_hphase = FUNC15(2, hscale, true);
		uv_rgb_vphase = FUNC15(2, vscale, false);
	} else {
		/* not used */
		y_hphase = 0;
		y_vphase = 0;

		uv_rgb_hphase = FUNC15(1, hscale, false);
		uv_rgb_vphase = FUNC15(1, vscale, false);
	}

	FUNC0(FUNC4(pipe, scaler_id),
		      PS_SCALER_EN | FUNC1(plane->id) | scaler->mode);
	FUNC0(FUNC6(pipe, scaler_id),
		      FUNC3(y_vphase) | FUNC2(uv_rgb_vphase));
	FUNC0(FUNC5(pipe, scaler_id),
		      FUNC3(y_hphase) | FUNC2(uv_rgb_hphase));
	FUNC0(FUNC7(pipe, scaler_id), (crtc_x << 16) | crtc_y);
	FUNC0(FUNC8(pipe, scaler_id), (crtc_w << 16) | crtc_h);
}