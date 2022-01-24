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
struct drm_display_mode {int crtc_clock; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int pipe_bpp; int fdi_lanes; int bw_constrained; int /*<<< orphan*/  fdi_m_n; TYPE_2__ base; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EDEADLK ; 
 int EINVAL ; 
 int RETRY ; 
 int FUNC1 (int /*<<< orphan*/ ,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (struct drm_device*,int /*<<< orphan*/ ,struct intel_crtc_state*) ; 
 int FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 

__attribute__((used)) static int FUNC6(struct intel_crtc *intel_crtc,
				       struct intel_crtc_state *pipe_config)
{
	struct drm_device *dev = intel_crtc->base.dev;
	const struct drm_display_mode *adjusted_mode = &pipe_config->base.adjusted_mode;
	int lane, link_bw, fdi_dotclock, ret;
	bool needs_recompute = false;

retry:
	/* FDI is a binary signal running at ~2.7GHz, encoding
	 * each output octet as 10 bits. The actual frequency
	 * is stored as a divider into a 100MHz clock, and the
	 * mode pixel clock is stored in units of 1KHz.
	 * Hence the bw of each lane in terms of the mode signal
	 * is:
	 */
	link_bw = FUNC1(FUNC5(dev), pipe_config);

	fdi_dotclock = adjusted_mode->crtc_clock;

	lane = FUNC4(fdi_dotclock, link_bw,
					   pipe_config->pipe_bpp);

	pipe_config->fdi_lanes = lane;

	FUNC2(pipe_config->pipe_bpp, lane, fdi_dotclock,
			       link_bw, &pipe_config->fdi_m_n, false, false);

	ret = FUNC3(dev, intel_crtc->pipe, pipe_config);
	if (ret == -EDEADLK)
		return ret;

	if (ret == -EINVAL && pipe_config->pipe_bpp > 6*3) {
		pipe_config->pipe_bpp -= 2*3;
		FUNC0("fdi link bw constraint, reducing pipe bpp to %i\n",
			      pipe_config->pipe_bpp);
		needs_recompute = true;
		pipe_config->bw_constrained = true;

		goto retry;
	}

	if (needs_recompute)
		return RETRY;

	return ret;
}