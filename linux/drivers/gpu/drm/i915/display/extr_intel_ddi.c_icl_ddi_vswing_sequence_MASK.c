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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum phy { ____Placeholder_phy } phy ;
typedef  enum intel_output_type { ____Placeholder_intel_output_type } intel_output_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_encoder*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 int FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct intel_encoder *encoder,
				    int link_clock,
				    u32 level,
				    enum intel_output_type type)
{
	struct drm_i915_private *dev_priv = FUNC4(encoder->base.dev);
	enum phy phy = FUNC3(dev_priv, encoder->port);

	if (FUNC2(dev_priv, phy))
		FUNC0(encoder, level, type);
	else
		FUNC1(encoder, link_clock, level);
}