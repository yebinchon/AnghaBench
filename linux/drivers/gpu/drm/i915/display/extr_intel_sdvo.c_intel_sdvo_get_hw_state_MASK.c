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
typedef  scalar_t__ u16 ;
struct intel_sdvo {int /*<<< orphan*/  sdvo_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_sdvo*,scalar_t__*) ; 
 int FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int*) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_sdvo* FUNC3 (struct intel_encoder*) ; 

__attribute__((used)) static bool FUNC4(struct intel_encoder *encoder,
				    enum pipe *pipe)
{
	struct drm_i915_private *dev_priv = FUNC2(encoder->base.dev);
	struct intel_sdvo *intel_sdvo = FUNC3(encoder);
	u16 active_outputs = 0;
	bool ret;

	FUNC0(intel_sdvo, &active_outputs);

	ret = FUNC1(dev_priv, intel_sdvo->sdvo_reg, pipe);

	return ret || active_outputs;
}