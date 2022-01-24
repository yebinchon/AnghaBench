#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int enabled_slices; } ;
struct TYPE_5__ {TYPE_1__ ddb; } ;
struct TYPE_6__ {TYPE_2__ skl_hw; } ;
struct drm_i915_private {TYPE_3__ wm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBUF_CTL_S1 ; 
 int /*<<< orphan*/  DBUF_CTL_S2 ; 
 int DBUF_POWER_REQUEST ; 
 int DBUF_POWER_STATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	FUNC2(DBUF_CTL_S1, FUNC1(DBUF_CTL_S1) | DBUF_POWER_REQUEST);
	FUNC2(DBUF_CTL_S2, FUNC1(DBUF_CTL_S2) | DBUF_POWER_REQUEST);
	FUNC3(DBUF_CTL_S2);

	FUNC4(10);

	if (!(FUNC1(DBUF_CTL_S1) & DBUF_POWER_STATE) ||
	    !(FUNC1(DBUF_CTL_S2) & DBUF_POWER_STATE))
		FUNC0("DBuf power enable timeout\n");
	else
		/*
		 * FIXME: for now pretend that we only have 1 slice, see
		 * intel_enabled_dbuf_slices_num().
		 */
		dev_priv->wm.skl_hw.ddb.enabled_slices = 1;
}