#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intel_load_detect_pipe {int dummy; } ;
struct intel_encoder {int /*<<< orphan*/  power_domain; } ;
struct intel_crt {struct intel_encoder base; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct drm_connector {int status; TYPE_2__* state; int /*<<< orphan*/  name; TYPE_1__ base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
struct TYPE_8__ {scalar_t__ load_detect_test; } ;
struct TYPE_7__ {int /*<<< orphan*/  pipe; } ;
struct TYPE_6__ {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__ i915_modparams ; 
 struct intel_crt* FUNC4 (struct drm_connector*) ; 
 scalar_t__ FUNC5 (struct drm_connector*) ; 
 scalar_t__ FUNC6 (struct drm_connector*) ; 
 int FUNC7 (struct intel_crt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct drm_connector*,int /*<<< orphan*/ *,struct intel_load_detect_pipe*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_connector*,struct intel_load_detect_pipe*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  intel_spurious_crt_detect ; 
 struct drm_i915_private* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct drm_connector *connector,
		 struct drm_modeset_acquire_ctx *ctx,
		 bool force)
{
	struct drm_i915_private *dev_priv = FUNC13(connector->dev);
	struct intel_crt *crt = FUNC4(connector);
	struct intel_encoder *intel_encoder = &crt->base;
	intel_wakeref_t wakeref;
	int status, ret;
	struct intel_load_detect_pipe tmp;

	FUNC0("[CONNECTOR:%d:%s] force=%d\n",
		      connector->base.id, connector->name,
		      force);

	if (i915_modparams.load_detect_test) {
		wakeref = FUNC9(dev_priv,
						  intel_encoder->power_domain);
		goto load_detect;
	}

	/* Skip machines without VGA that falsely report hotplug events */
	if (FUNC3(intel_spurious_crt_detect))
		return connector_status_disconnected;

	wakeref = FUNC9(dev_priv,
					  intel_encoder->power_domain);

	if (FUNC1(dev_priv)) {
		/* We can not rely on the HPD pin always being correctly wired
		 * up, for example many KVM do not pass it through, and so
		 * only trust an assertion that the monitor is connected.
		 */
		if (FUNC6(connector)) {
			FUNC0("CRT detected via hotplug\n");
			status = connector_status_connected;
			goto out;
		} else
			FUNC0("CRT not detected via hotplug\n");
	}

	if (FUNC5(connector)) {
		status = connector_status_connected;
		goto out;
	}

	/* Load detection is broken on HPD capable machines. Whoever wants a
	 * broken monitor (without edid) to work behind a broken kvm (that fails
	 * to have the right resistors for HP detection) needs to fix this up.
	 * For now just bail out. */
	if (FUNC1(dev_priv)) {
		status = connector_status_disconnected;
		goto out;
	}

load_detect:
	if (!force) {
		status = connector->status;
		goto out;
	}

	/* for pre-945g platforms use load detect */
	ret = FUNC11(connector, NULL, &tmp, ctx);
	if (ret > 0) {
		if (FUNC5(connector))
			status = connector_status_connected;
		else if (FUNC2(dev_priv) < 4)
			status = FUNC7(crt,
				FUNC14(connector->state->crtc)->pipe);
		else if (i915_modparams.load_detect_test)
			status = connector_status_disconnected;
		else
			status = connector_status_unknown;
		FUNC12(connector, &tmp, ctx);
	} else if (ret == 0) {
		status = connector_status_unknown;
	} else {
		status = ret;
	}

out:
	FUNC10(dev_priv, intel_encoder->power_domain, wakeref);

	/*
	 * Make sure the refs for power wells enabled during detect are
	 * dropped to avoid a new detect cycle triggered by HPD polling.
	 */
	FUNC8(dev_priv);

	return status;
}