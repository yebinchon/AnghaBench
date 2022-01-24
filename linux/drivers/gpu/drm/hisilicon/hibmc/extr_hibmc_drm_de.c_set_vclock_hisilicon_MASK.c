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
typedef  unsigned long u32 ;
struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_device {struct hibmc_drm_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ CRT_PLL1_HS ; 
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 (int) ; 
 unsigned long FUNC2 (int) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct drm_device *dev, unsigned long pll)
{
	u32 val;
	struct hibmc_drm_private *priv = dev->dev_private;

	val = FUNC3(priv->mmio + CRT_PLL1_HS);
	val &= ~(FUNC1(1));
	FUNC5(val, priv->mmio + CRT_PLL1_HS);

	val = FUNC0(1) | FUNC2(1);
	FUNC5(val, priv->mmio + CRT_PLL1_HS);

	FUNC5(pll, priv->mmio + CRT_PLL1_HS);

	FUNC4(1000, 2000);

	val = pll & ~(FUNC2(1));
	FUNC5(val, priv->mmio + CRT_PLL1_HS);

	FUNC4(1000, 2000);

	val &= ~(FUNC0(1));
	FUNC5(val, priv->mmio + CRT_PLL1_HS);

	FUNC4(1000, 2000);

	val |= FUNC1(1);
	FUNC5(val, priv->mmio + CRT_PLL1_HS);
}