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
struct intel_lspcon {int active; int /*<<< orphan*/  mode; } ;
struct intel_dp {TYPE_3__* attached_connector; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; struct intel_lspcon lspcon; struct intel_dp dp; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int ycbcr_420_allowed; } ;
struct TYPE_6__ {struct drm_connector base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRM_LSPCON_MODE_INVALID ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_lspcon*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_lspcon*) ; 
 struct drm_i915_private* FUNC6 (struct drm_device*) ; 

bool FUNC7(struct intel_digital_port *intel_dig_port)
{
	struct intel_dp *dp = &intel_dig_port->dp;
	struct intel_lspcon *lspcon = &intel_dig_port->lspcon;
	struct drm_device *dev = intel_dig_port->base.base.dev;
	struct drm_i915_private *dev_priv = FUNC6(dev);
	struct drm_connector *connector = &dp->attached_connector->base;

	if (!FUNC2(dev_priv)) {
		FUNC1("LSPCON is not supported on this platform\n");
		return false;
	}

	lspcon->active = false;
	lspcon->mode = DRM_LSPCON_MODE_INVALID;

	if (!FUNC5(lspcon)) {
		FUNC1("Failed to probe lspcon\n");
		return false;
	}

	if (!FUNC3(dp)) {
		FUNC1("LSPCON DPCD read failed\n");
		return false;
	}

	if (!FUNC4(lspcon)) {
		FUNC1("LSPCON vendor detection failed\n");
		return false;
	}

	connector->ycbcr_420_allowed = true;
	lspcon->active = true;
	FUNC0("Success: LSPCON init\n");
	return true;
}