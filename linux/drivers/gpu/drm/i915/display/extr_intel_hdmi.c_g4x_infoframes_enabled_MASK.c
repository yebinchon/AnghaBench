#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDEO_DIP_CTL ; 
 int VIDEO_DIP_ENABLE ; 
 int VIDEO_DIP_ENABLE_AVI ; 
 int VIDEO_DIP_ENABLE_SPD ; 
 int VIDEO_DIP_ENABLE_VENDOR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VIDEO_DIP_PORT_MASK ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct intel_encoder *encoder,
				  const struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC2(encoder->base.dev);
	u32 val = FUNC0(VIDEO_DIP_CTL);

	if ((val & VIDEO_DIP_ENABLE) == 0)
		return 0;

	if ((val & VIDEO_DIP_PORT_MASK) != FUNC1(encoder->port))
		return 0;

	return val & (VIDEO_DIP_ENABLE_AVI |
		      VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_SPD);
}