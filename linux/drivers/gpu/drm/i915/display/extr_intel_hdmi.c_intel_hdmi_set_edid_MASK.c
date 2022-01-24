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
struct intel_hdmi {int /*<<< orphan*/  cec_notifier; int /*<<< orphan*/  has_hdmi_sink; int /*<<< orphan*/  has_audio; int /*<<< orphan*/  ddc_bus; } ;
struct i2c_adapter {int dummy; } ;
struct edid {int input; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
struct TYPE_2__ {struct edid* detect_edid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_EDID_INPUT_DIGITAL ; 
 int /*<<< orphan*/  POWER_DOMAIN_GMBUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*,struct i2c_adapter*) ; 
 struct intel_hdmi* FUNC5 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*,int) ; 
 struct i2c_adapter* FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (struct drm_connector*) ; 

__attribute__((used)) static bool
FUNC14(struct drm_connector *connector)
{
	struct drm_i915_private *dev_priv = FUNC12(connector->dev);
	struct intel_hdmi *intel_hdmi = FUNC5(connector);
	intel_wakeref_t wakeref;
	struct edid *edid;
	bool connected = false;
	struct i2c_adapter *i2c;

	wakeref = FUNC6(dev_priv, POWER_DOMAIN_GMBUS);

	i2c = FUNC9(dev_priv, intel_hdmi->ddc_bus);

	edid = FUNC4(connector, i2c);

	if (!edid && !FUNC10(i2c)) {
		FUNC0("HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
		FUNC8(i2c, true);
		edid = FUNC4(connector, i2c);
		FUNC8(i2c, false);
	}

	FUNC11(connector, edid != NULL);

	FUNC7(dev_priv, POWER_DOMAIN_GMBUS, wakeref);

	FUNC13(connector)->detect_edid = edid;
	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
		intel_hdmi->has_audio = FUNC3(edid);
		intel_hdmi->has_hdmi_sink = FUNC2(edid);

		connected = true;
	}

	FUNC1(intel_hdmi->cec_notifier, edid);

	return connected;
}