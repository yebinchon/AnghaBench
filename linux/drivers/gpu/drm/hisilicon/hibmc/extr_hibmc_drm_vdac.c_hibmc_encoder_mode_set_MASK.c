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
typedef  int /*<<< orphan*/  u32 ;
struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct hibmc_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ HIBMC_DISPLAY_CONTROL_HISILE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct drm_encoder *encoder,
				   struct drm_display_mode *mode,
				   struct drm_display_mode *adj_mode)
{
	u32 reg;
	struct drm_device *dev = encoder->dev;
	struct hibmc_drm_private *priv = dev->dev_private;

	reg = FUNC4(priv->mmio + HIBMC_DISPLAY_CONTROL_HISILE);
	reg |= FUNC1(1);
	reg |= FUNC2(1);
	reg |= FUNC0(1);
	reg |= FUNC3(1);
	FUNC5(reg, priv->mmio + HIBMC_DISPLAY_CONTROL_HISILE);
}