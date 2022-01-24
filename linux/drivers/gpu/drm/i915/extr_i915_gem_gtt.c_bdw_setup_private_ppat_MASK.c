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
typedef  int u64 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int GEN8_PPAT_LLC ; 
 int GEN8_PPAT_LLCELLC ; 
 int GEN8_PPAT_UC ; 
 int GEN8_PPAT_WB ; 
 int GEN8_PPAT_WC ; 
 int GEN8_PPAT_WT ; 
 int /*<<< orphan*/  GEN8_PRIVATE_PAT_HI ; 
 int /*<<< orphan*/  GEN8_PRIVATE_PAT_LO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	u64 pat;

	pat = FUNC0(0, GEN8_PPAT_WB | GEN8_PPAT_LLC) |	/* for normal objects, no eLLC */
	      FUNC0(1, GEN8_PPAT_WC | GEN8_PPAT_LLCELLC) |	/* for something pointing to ptes? */
	      FUNC0(2, GEN8_PPAT_WT | GEN8_PPAT_LLCELLC) |	/* for scanout with eLLC */
	      FUNC0(3, GEN8_PPAT_UC) |			/* Uncached objects, mostly for scanout */
	      FUNC0(4, GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | FUNC1(0)) |
	      FUNC0(5, GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | FUNC1(1)) |
	      FUNC0(6, GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | FUNC1(2)) |
	      FUNC0(7, GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | FUNC1(3));

	FUNC2(GEN8_PRIVATE_PAT_LO, FUNC3(pat));
	FUNC2(GEN8_PRIVATE_PAT_HI, FUNC4(pat));
}