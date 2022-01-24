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
typedef  int u8 ;
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  DISPIO_CR_TX_BMU_CR0 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
				enum port port, u8 iboost)
{
	u32 tmp;

	tmp = FUNC3(DISPIO_CR_TX_BMU_CR0);
	tmp &= ~(FUNC1(port) | FUNC0(port));
	if (iboost)
		tmp |= iboost << FUNC2(port);
	else
		tmp |= FUNC0(port);
	FUNC4(DISPIO_CR_TX_BMU_CR0, tmp);
}