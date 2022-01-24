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
 int DFR_DISABLE ; 
 int /*<<< orphan*/  GEN10_DFR_RATIO_EN_AND_CHICKEN ; 
 int /*<<< orphan*/  GEN11_ENABLE_32_PLANE_MODE ; 
 int /*<<< orphan*/  GEN9_CSFE_CHICKEN1_RCS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	/* This is not an Wa. Enable to reduce Sampler power */
	FUNC1(GEN10_DFR_RATIO_EN_AND_CHICKEN,
		   FUNC0(GEN10_DFR_RATIO_EN_AND_CHICKEN) & ~DFR_DISABLE);

	/* WaEnable32PlaneMode:icl */
	FUNC1(GEN9_CSFE_CHICKEN1_RCS,
		   FUNC2(GEN11_ENABLE_32_PLANE_MODE));
}