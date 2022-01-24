#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_6__ {int pipe; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VIDEO_DIP_ENABLE ; 
 int VIDEO_DIP_ENABLE_AVI ; 
 int VIDEO_DIP_ENABLE_GAMUT ; 
 int VIDEO_DIP_ENABLE_GCP ; 
 int VIDEO_DIP_ENABLE_SPD ; 
 int VIDEO_DIP_ENABLE_VENDOR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VIDEO_DIP_PORT_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(struct intel_encoder *encoder,
				  const struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC3(encoder->base.dev);
	enum pipe pipe = FUNC4(pipe_config->base.crtc)->pipe;
	u32 val = FUNC0(FUNC2(pipe));

	if ((val & VIDEO_DIP_ENABLE) == 0)
		return 0;

	if ((val & VIDEO_DIP_PORT_MASK) != FUNC1(encoder->port))
		return 0;

	return val & (VIDEO_DIP_ENABLE_AVI |
		      VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
		      VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);
}