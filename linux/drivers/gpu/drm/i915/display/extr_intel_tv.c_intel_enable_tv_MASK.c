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
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TV_CTL ; 
 int TV_ENC_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC3 (struct drm_device*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct intel_encoder *encoder,
		const struct intel_crtc_state *pipe_config,
		const struct drm_connector_state *conn_state)
{
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = FUNC3(dev);

	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
	FUNC2(dev_priv,
			      FUNC4(pipe_config->base.crtc)->pipe);

	FUNC1(TV_CTL, FUNC0(TV_CTL) | TV_ENC_ENABLE);
}