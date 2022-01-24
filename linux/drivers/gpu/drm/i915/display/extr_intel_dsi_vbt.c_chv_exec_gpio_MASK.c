#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int seq_version; } ;
struct TYPE_4__ {TYPE_1__ dsi; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CHV_GPIO_GPIOCFG_GPO ; 
 int CHV_GPIO_GPIOEN ; 
 int FUNC1 (int) ; 
 scalar_t__ CHV_GPIO_IDX_START_E ; 
 scalar_t__ CHV_GPIO_IDX_START_SE ; 
 scalar_t__ CHV_GPIO_IDX_START_SW ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ CHV_IOSF_PORT_GPIO_E ; 
 scalar_t__ CHV_IOSF_PORT_GPIO_N ; 
 scalar_t__ CHV_IOSF_PORT_GPIO_SE ; 
 scalar_t__ CHV_IOSF_PORT_GPIO_SW ; 
 scalar_t__ CHV_VBT_MAX_PINS_PER_FMLY ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  VLV_IOSF_SB_GPIO ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv,
			  u8 gpio_source, u8 gpio_index, bool value)
{
	u16 cfg0, cfg1;
	u16 family_num;
	u8 port;

	if (dev_priv->vbt.dsi.seq_version >= 3) {
		if (gpio_index >= CHV_GPIO_IDX_START_SE) {
			/* XXX: it's unclear whether 255->57 is part of SE. */
			gpio_index -= CHV_GPIO_IDX_START_SE;
			port = CHV_IOSF_PORT_GPIO_SE;
		} else if (gpio_index >= CHV_GPIO_IDX_START_SW) {
			gpio_index -= CHV_GPIO_IDX_START_SW;
			port = CHV_IOSF_PORT_GPIO_SW;
		} else if (gpio_index >= CHV_GPIO_IDX_START_E) {
			gpio_index -= CHV_GPIO_IDX_START_E;
			port = CHV_IOSF_PORT_GPIO_E;
		} else {
			port = CHV_IOSF_PORT_GPIO_N;
		}
	} else {
		/* XXX: The spec is unclear about CHV GPIO on seq v2 */
		if (gpio_source != 0) {
			FUNC4("unknown gpio source %u\n", gpio_source);
			return;
		}

		if (gpio_index >= CHV_GPIO_IDX_START_E) {
			FUNC4("invalid gpio index %u for GPIO N\n",
				      gpio_index);
			return;
		}

		port = CHV_IOSF_PORT_GPIO_N;
	}

	family_num = gpio_index / CHV_VBT_MAX_PINS_PER_FMLY;
	gpio_index = gpio_index % CHV_VBT_MAX_PINS_PER_FMLY;

	cfg0 = FUNC2(family_num, gpio_index);
	cfg1 = FUNC3(family_num, gpio_index);

	FUNC5(dev_priv, FUNC0(VLV_IOSF_SB_GPIO));
	FUNC7(dev_priv, port, cfg1, 0);
	FUNC7(dev_priv, port, cfg0,
			  CHV_GPIO_GPIOEN | CHV_GPIO_GPIOCFG_GPO |
			  FUNC1(value));
	FUNC6(dev_priv, FUNC0(VLV_IOSF_SB_GPIO));
}