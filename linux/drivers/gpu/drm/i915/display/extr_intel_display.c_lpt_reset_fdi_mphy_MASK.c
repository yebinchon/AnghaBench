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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FDI_MPHY_IOSFSB_RESET_CTL ; 
 int FDI_MPHY_IOSFSB_RESET_STATUS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SOUTH_CHICKEN2 ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	u32 tmp;

	tmp = FUNC1(SOUTH_CHICKEN2);
	tmp |= FDI_MPHY_IOSFSB_RESET_CTL;
	FUNC2(SOUTH_CHICKEN2, tmp);

	if (FUNC3(FUNC1(SOUTH_CHICKEN2) &
			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
		FUNC0("FDI mPHY reset assert timeout\n");

	tmp = FUNC1(SOUTH_CHICKEN2);
	tmp &= ~FDI_MPHY_IOSFSB_RESET_CTL;
	FUNC2(SOUTH_CHICKEN2, tmp);

	if (FUNC3((FUNC1(SOUTH_CHICKEN2) &
			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
		FUNC0("FDI mPHY reset de-assert timeout\n");
}