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
struct intel_connector {TYPE_1__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  cdclk; } ;
struct TYPE_6__ {TYPE_2__ hw; } ;
struct drm_i915_private {TYPE_3__ cdclk; int /*<<< orphan*/  rawclk_freq; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct intel_connector *connector, u32 pwm_freq_hz)
{
	struct drm_i915_private *dev_priv = FUNC3(connector->base.dev);
	int clock;

	if (FUNC1(dev_priv))
		clock = FUNC2(dev_priv->rawclk_freq);
	else
		clock = FUNC2(dev_priv->cdclk.hw.cdclk);

	return FUNC0(clock, pwm_freq_hz * 128);
}