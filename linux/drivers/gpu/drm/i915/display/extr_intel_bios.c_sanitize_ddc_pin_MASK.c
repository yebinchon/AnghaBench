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
struct TYPE_2__ {struct ddi_vbt_port_info* ddi_port_info; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct ddi_vbt_port_info {int supports_dvi; int supports_hdmi; scalar_t__ alternate_ddc_pin; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PORT_NONE ; 
 int FUNC1 (struct drm_i915_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv,
			     enum port port)
{
	struct ddi_vbt_port_info *info = &dev_priv->vbt.ddi_port_info[port];
	enum port p;

	if (!info->alternate_ddc_pin)
		return;

	p = FUNC1(dev_priv, info->alternate_ddc_pin);
	if (p != PORT_NONE) {
		FUNC0("port %c trying to use the same DDC pin (0x%x) as port %c, "
			      "disabling port %c DVI/HDMI support\n",
			      FUNC2(port), info->alternate_ddc_pin,
			      FUNC2(p), FUNC2(p));

		/*
		 * If we have multiple ports supposedly sharing the
		 * pin, then dvi/hdmi couldn't exist on the shared
		 * port. Otherwise they share the same ddc bin and
		 * system couldn't communicate with them separately.
		 *
		 * Give inverse child device order the priority,
		 * last one wins. Yes, there are real machines
		 * (eg. Asrock B250M-HDV) where VBT has both
		 * port A and port E with the same AUX ch and
		 * we must pick port E :(
		 */
		info = &dev_priv->vbt.ddi_port_info[p];

		info->supports_dvi = false;
		info->supports_hdmi = false;
		info->alternate_ddc_pin = 0;
	}
}