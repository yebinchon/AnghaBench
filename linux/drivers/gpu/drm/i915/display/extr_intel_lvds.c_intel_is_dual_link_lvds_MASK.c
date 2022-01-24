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
struct intel_encoder {int /*<<< orphan*/  base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_dual_link; } ;

/* Variables and functions */
 struct intel_encoder* FUNC0 (struct drm_i915_private*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(struct drm_i915_private *dev_priv)
{
	struct intel_encoder *encoder = FUNC0(dev_priv);

	return encoder && FUNC1(&encoder->base)->is_dual_link;
}