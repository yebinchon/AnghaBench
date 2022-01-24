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
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int pipe_src_w; int pipe_src_h; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC3(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC2(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	/* pipesrc controls the size that is scaled from, which should
	 * always be the user's requested size.
	 */
	FUNC0(FUNC1(pipe),
		   ((crtc_state->pipe_src_w - 1) << 16) |
		   (crtc_state->pipe_src_h - 1));
}