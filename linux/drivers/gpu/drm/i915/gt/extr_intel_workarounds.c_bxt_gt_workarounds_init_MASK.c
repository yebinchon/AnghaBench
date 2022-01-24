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
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS ; 
 int /*<<< orphan*/  GEN9_GAMT_ECO_REG_RW_IA ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_wa_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
	FUNC0(i915, wal);

	/* WaInPlaceDecompressionHang:bxt */
	FUNC1(wal,
		    GEN9_GAMT_ECO_REG_RW_IA,
		    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
}