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
struct intel_hdmi {struct intel_connector* attached_connector; } ;
struct intel_digital_port {int /*<<< orphan*/  base; struct intel_hdmi hdmi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct intel_connector*) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static
int FUNC6(struct intel_digital_port *intel_dig_port,
				      bool enable)
{
	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
	struct intel_connector *connector = hdmi->attached_connector;
	struct drm_i915_private *dev_priv = FUNC4(connector->base.dev);
	int ret;

	if (!enable)
		FUNC5(6, 60); /* Bspec says >= 6us */

	ret = FUNC2(&intel_dig_port->base, enable);
	if (ret) {
		FUNC0("%s HDCP signalling failed (%d)\n",
			  enable ? "Enable" : "Disable", ret);
		return ret;
	}

	/*
	 * WA: To fix incorrect positioning of the window of
	 * opportunity and enc_en signalling in KABYLAKE.
	 */
	if (FUNC1(dev_priv) && enable)
		return FUNC3(connector);

	return 0;
}