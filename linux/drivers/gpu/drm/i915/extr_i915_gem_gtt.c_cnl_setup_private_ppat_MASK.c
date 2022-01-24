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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int GEN8_PPAT_LLC ; 
 int GEN8_PPAT_LLCELLC ; 
 int GEN8_PPAT_UC ; 
 int GEN8_PPAT_WB ; 
 int GEN8_PPAT_WC ; 
 int GEN8_PPAT_WT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	FUNC2(FUNC0(0), GEN8_PPAT_WB | GEN8_PPAT_LLC);
	FUNC2(FUNC0(1), GEN8_PPAT_WC | GEN8_PPAT_LLCELLC);
	FUNC2(FUNC0(2), GEN8_PPAT_WT | GEN8_PPAT_LLCELLC);
	FUNC2(FUNC0(3), GEN8_PPAT_UC);
	FUNC2(FUNC0(4), GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | FUNC1(0));
	FUNC2(FUNC0(5), GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | FUNC1(1));
	FUNC2(FUNC0(6), GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | FUNC1(2));
	FUNC2(FUNC0(7), GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | FUNC1(3));
}