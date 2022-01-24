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
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BXT_MIPI_CLOCK_CTL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  CLOCKSTOP ; 
 int /*<<< orphan*/  GLK_TX_ESC_CLK_DIV1_MASK ; 
 int /*<<< orphan*/  GLK_TX_ESC_CLK_DIV2_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  MIPIO_TXESC_CLK_DIV1 ; 
 int /*<<< orphan*/  MIPIO_TXESC_CLK_DIV2 ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct drm_i915_private* FUNC8 (struct drm_device*) ; 

void FUNC9(struct intel_encoder *encoder, enum port port)
{
	u32 tmp;
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = FUNC8(dev);

	/* Clear old configurations */
	if (FUNC6(dev_priv)) {
		tmp = FUNC4(BXT_MIPI_CLOCK_CTL);
		tmp &= ~(FUNC3(port));
		tmp &= ~(FUNC2(port));
		tmp &= ~(FUNC0(port));
		tmp &= ~(FUNC1(port));
		FUNC5(BXT_MIPI_CLOCK_CTL, tmp);
	} else {
		tmp = FUNC4(MIPIO_TXESC_CLK_DIV1);
		tmp &= ~GLK_TX_ESC_CLK_DIV1_MASK;
		FUNC5(MIPIO_TXESC_CLK_DIV1, tmp);

		tmp = FUNC4(MIPIO_TXESC_CLK_DIV2);
		tmp &= ~GLK_TX_ESC_CLK_DIV2_MASK;
		FUNC5(MIPIO_TXESC_CLK_DIV2, tmp);
	}
	FUNC5(FUNC7(port), CLOCKSTOP);
}