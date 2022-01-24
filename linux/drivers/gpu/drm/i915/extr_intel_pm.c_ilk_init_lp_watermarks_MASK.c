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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WM1_LP_ILK ; 
 int WM1_LP_SR_EN ; 
 int /*<<< orphan*/  WM2_LP_ILK ; 
 int /*<<< orphan*/  WM3_LP_ILK ; 

__attribute__((used)) static void FUNC2(struct drm_i915_private *dev_priv)
{
	FUNC1(WM3_LP_ILK, FUNC0(WM3_LP_ILK) & ~WM1_LP_SR_EN);
	FUNC1(WM2_LP_ILK, FUNC0(WM2_LP_ILK) & ~WM1_LP_SR_EN);
	FUNC1(WM1_LP_ILK, FUNC0(WM1_LP_ILK) & ~WM1_LP_SR_EN);

	/*
	 * Don't touch WM1S_LP_EN here.
	 * Doing so could cause underruns.
	 */
}