#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct drm_i915_private {int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  HDCP_AKSV_SEND_TRIGGER ; 
 int /*<<< orphan*/  HDCP_KEY_CONF ; 
 int HDCP_KEY_LOAD_DONE ; 
 int HDCP_KEY_LOAD_STATUS ; 
 int /*<<< orphan*/  HDCP_KEY_LOAD_TRIGGER ; 
 int /*<<< orphan*/  HDCP_KEY_STATUS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  SKL_PCODE_LOAD_HDCP_KEYS ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int*) ; 
 int FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct drm_i915_private *dev_priv)
{
	int ret;
	u32 val;

	val = FUNC1(HDCP_KEY_STATUS);
	if ((val & HDCP_KEY_LOAD_DONE) && (val & HDCP_KEY_LOAD_STATUS))
		return 0;

	/*
	 * On HSW and BDW HW loads the HDCP1.4 Key when Display comes
	 * out of reset. So if Key is not already loaded, its an error state.
	 */
	if (FUNC5(dev_priv) || FUNC3(dev_priv))
		if (!(FUNC1(HDCP_KEY_STATUS) & HDCP_KEY_LOAD_DONE))
			return -ENXIO;

	/*
	 * Initiate loading the HDCP key from fuses.
	 *
	 * BXT+ platforms, HDCP key needs to be loaded by SW. Only Gen 9
	 * platforms except BXT and GLK, differ in the key load trigger process
	 * from other platforms. So GEN9_BC uses the GT Driver Mailbox i/f.
	 */
	if (FUNC4(dev_priv)) {
		ret = FUNC7(dev_priv,
					      SKL_PCODE_LOAD_HDCP_KEYS, 1);
		if (ret) {
			FUNC0("Failed to initiate HDCP key load (%d)\n",
			          ret);
			return ret;
		}
	} else {
		FUNC2(HDCP_KEY_CONF, HDCP_KEY_LOAD_TRIGGER);
	}

	/* Wait for the keys to load (500us) */
	ret = FUNC6(&dev_priv->uncore, HDCP_KEY_STATUS,
					HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE,
					10, 1, &val);
	if (ret)
		return ret;
	else if (!(val & HDCP_KEY_LOAD_STATUS))
		return -ENXIO;

	/* Send Aksv over to PCH display for use in authentication */
	FUNC2(HDCP_KEY_CONF, HDCP_AKSV_SEND_TRIGGER);

	return 0;
}