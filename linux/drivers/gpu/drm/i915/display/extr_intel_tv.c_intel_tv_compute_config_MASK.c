#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tv_mode {int /*<<< orphan*/  progressive; int /*<<< orphan*/  clock; } ;
struct TYPE_10__ {int top; int bottom; } ;
struct intel_tv_connector_state {int bypass_vfilter; TYPE_5__ margins; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_display_mode {int crtc_hdisplay; int crtc_vdisplay; int flags; int clock; int crtc_clock; char* name; int /*<<< orphan*/  private_flags; } ;
struct TYPE_7__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int pipe_bpp; int /*<<< orphan*/  port_clock; int /*<<< orphan*/  output_format; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_8__ {int top; int bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct TYPE_9__ {TYPE_3__ margins; } ;
struct drm_connector_state {TYPE_4__ tv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_MODE_FLAG_DBLSCAN ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int EINVAL ; 
 int /*<<< orphan*/  I915_MODE_FLAG_USE_SCANLINE_COUNTER ; 
 int /*<<< orphan*/  INTEL_OUTPUT_FORMAT_RGB ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*,int /*<<< orphan*/ ) ; 
 struct tv_mode* FUNC4 (struct drm_connector_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_display_mode*,struct tv_mode const*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_display_mode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_display_mode*,int,int,int) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_display_mode*,struct drm_connector_state*,int) ; 
 struct drm_i915_private* FUNC10 (int /*<<< orphan*/ ) ; 
 struct intel_tv_connector_state* FUNC11 (struct drm_connector_state*) ; 

__attribute__((used)) static int
FUNC12(struct intel_encoder *encoder,
			struct intel_crtc_state *pipe_config,
			struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC10(encoder->base.dev);
	struct intel_tv_connector_state *tv_conn_state =
		FUNC11(conn_state);
	const struct tv_mode *tv_mode = FUNC4(conn_state);
	struct drm_display_mode *adjusted_mode =
		&pipe_config->base.adjusted_mode;
	int hdisplay = adjusted_mode->crtc_hdisplay;
	int vdisplay = adjusted_mode->crtc_vdisplay;

	if (!tv_mode)
		return -EINVAL;

	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
		return -EINVAL;

	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;

	FUNC0("forcing bpc to 8 for TV\n");
	pipe_config->pipe_bpp = 8*3;

	pipe_config->port_clock = tv_mode->clock;

	FUNC5(adjusted_mode, tv_mode);
	FUNC3(adjusted_mode, 0);

	if (FUNC8(dev_priv, hdisplay) ||
	    !FUNC9(adjusted_mode, conn_state, vdisplay)) {
		int extra, top, bottom;

		extra = adjusted_mode->crtc_vdisplay - vdisplay;

		if (extra < 0) {
			FUNC0("No vertical scaling for >1024 pixel wide modes\n");
			return -EINVAL;
		}

		/* Need to turn off the vertical filter and center the image */

		/* Attempt to maintain the relative sizes of the margins */
		top = conn_state->tv.margins.top;
		bottom = conn_state->tv.margins.bottom;

		if (top + bottom)
			top = extra * top / (top + bottom);
		else
			top = extra / 2;
		bottom = extra - top;

		tv_conn_state->margins.top = top;
		tv_conn_state->margins.bottom = bottom;

		tv_conn_state->bypass_vfilter = true;

		if (!tv_mode->progressive) {
			adjusted_mode->clock /= 2;
			adjusted_mode->crtc_clock /= 2;
			adjusted_mode->flags |= DRM_MODE_FLAG_INTERLACE;
		}
	} else {
		tv_conn_state->margins.top = conn_state->tv.margins.top;
		tv_conn_state->margins.bottom = conn_state->tv.margins.bottom;

		tv_conn_state->bypass_vfilter = false;
	}

	FUNC0("TV mode:\n");
	FUNC2(adjusted_mode);

	/*
	 * The pipe scanline counter behaviour looks as follows when
	 * using the TV encoder:
	 *
	 * time ->
	 *
	 * dsl=vtotal-1       |             |
	 *                   ||            ||
	 *               ___| |        ___| |
	 *              /     |       /     |
	 *             /      |      /      |
	 * dsl=0   ___/       |_____/       |
	 *        | | |  |  | |
	 *         ^ ^ ^   ^ ^
	 *         | | |   | pipe vblank/first part of tv vblank
	 *         | | |   bottom margin
	 *         | | active
	 *         | top margin
	 *         remainder of tv vblank
	 *
	 * When the TV encoder is used the pipe wants to run faster
	 * than expected rate. During the active portion the TV
	 * encoder stalls the pipe every few lines to keep it in
	 * check. When the TV encoder reaches the bottom margin the
	 * pipe simply stops. Once we reach the TV vblank the pipe is
	 * no longer stalled and it runs at the max rate (apparently
	 * oversample clock on gen3, cdclk on gen4). Once the pipe
	 * reaches the pipe vtotal the pipe stops for the remainder
	 * of the TV vblank/top margin. The pipe starts up again when
	 * the TV encoder exits the top margin.
	 *
	 * To avoid huge hassles for vblank timestamping we scale
	 * the pipe timings as if the pipe always runs at the average
	 * rate it maintains during the active period. This also
	 * gives us a reasonable guesstimate as to the pixel rate.
	 * Due to the variation in the actual pipe speed the scanline
	 * counter will give us slightly erroneous results during the
	 * TV vblank/margins. But since vtotal was selected such that
	 * it matches the average rate of the pipe during the active
	 * portion the error shouldn't cause any serious grief to
	 * vblank timestamps.
	 *
	 * For posterity here is the empirically derived formula
	 * that gives us the maximum length of the pipe vblank
	 * we can use without causing display corruption. Following
	 * this would allow us to have a ticking scanline counter
	 * everywhere except during the bottom margin (there the
	 * pipe always stops). Ie. this would eliminate the second
	 * flat portion of the above graph. However this would also
	 * complicate vblank timestamping as the pipe vtotal would
	 * no longer match the average rate the pipe runs at during
	 * the active portion. Hence following this formula seems
	 * more trouble that it's worth.
	 *
	 * if (IS_GEN(dev_priv, 4)) {
	 *	num = cdclk * (tv_mode->oversample >> !tv_mode->progressive);
	 *	den = tv_mode->clock;
	 * } else {
	 *	num = tv_mode->oversample >> !tv_mode->progressive;
	 *	den = 1;
	 * }
	 * max_pipe_vblank_len ~=
	 *	(num * tv_htotal * (tv_vblank_len + top_margin)) /
	 *	(den * pipe_htotal);
	 */
	FUNC6(adjusted_mode, hdisplay,
				  conn_state->tv.margins.left,
				  conn_state->tv.margins.right);
	FUNC7(adjusted_mode, vdisplay,
				 tv_conn_state->margins.top,
				 tv_conn_state->margins.bottom);
	FUNC3(adjusted_mode, 0);
	adjusted_mode->name[0] = '\0';

	/* pixel counter doesn't work on i965gm TV output */
	if (FUNC1(dev_priv))
		adjusted_mode->private_flags |=
			I915_MODE_FLAG_USE_SCANLINE_COUNTER;

	return 0;
}