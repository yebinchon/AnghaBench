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
 int /*<<< orphan*/  GEN8_PPAT_UC ; 
 int /*<<< orphan*/  GEN8_PPAT_WB ; 
 int /*<<< orphan*/  GEN8_PPAT_WC ; 
 int /*<<< orphan*/  GEN8_PPAT_WT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct drm_i915_private *dev_priv)
{
	/* TGL doesn't support LLC or AGE settings */
	FUNC1(FUNC0(0), GEN8_PPAT_WB);
	FUNC1(FUNC0(1), GEN8_PPAT_WC);
	FUNC1(FUNC0(2), GEN8_PPAT_WT);
	FUNC1(FUNC0(3), GEN8_PPAT_UC);
	FUNC1(FUNC0(4), GEN8_PPAT_WB);
	FUNC1(FUNC0(5), GEN8_PPAT_WB);
	FUNC1(FUNC0(6), GEN8_PPAT_WB);
	FUNC1(FUNC0(7), GEN8_PPAT_WB);
}