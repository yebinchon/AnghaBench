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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FDI_BC_BIFURCATION_SELECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FDI_RX_ENABLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PIPE_B ; 
 int /*<<< orphan*/  PIPE_C ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOUTH_CHICKEN1 ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv, bool enable)
{
	u32 temp;

	temp = FUNC2(SOUTH_CHICKEN1);
	if (!!(temp & FDI_BC_BIFURCATION_SELECT) == enable)
		return;

	FUNC5(FUNC2(FUNC1(PIPE_B)) & FDI_RX_ENABLE);
	FUNC5(FUNC2(FUNC1(PIPE_C)) & FDI_RX_ENABLE);

	temp &= ~FDI_BC_BIFURCATION_SELECT;
	if (enable)
		temp |= FDI_BC_BIFURCATION_SELECT;

	FUNC0("%sabling fdi C rx\n", enable ? "en" : "dis");
	FUNC3(SOUTH_CHICKEN1, temp);
	FUNC4(SOUTH_CHICKEN1);
}