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
typedef  int /*<<< orphan*/  u16 ;
struct drm_i915_private {int dummy; } ;
struct dram_dimm_info {int /*<<< orphan*/  ranks; int /*<<< orphan*/  width; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dram_dimm_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct drm_i915_private *dev_priv,
		       struct dram_dimm_info *dimm,
		       int channel, char dimm_name, u16 val)
{
	if (FUNC1(dev_priv) >= 10) {
		dimm->size = FUNC3(val);
		dimm->width = FUNC4(val);
		dimm->ranks = FUNC2(val);
	} else {
		dimm->size = FUNC6(val);
		dimm->width = FUNC7(val);
		dimm->ranks = FUNC5(val);
	}

	FUNC0("CH%u DIMM %c size: %u GB, width: X%u, ranks: %u, 16Gb DIMMs: %s\n",
		      channel, dimm_name, dimm->size, dimm->width, dimm->ranks,
		      FUNC9(FUNC8(dimm)));
}