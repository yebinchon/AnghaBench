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
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int DBUF_POWER_REQUEST ; 
 int DBUF_POWER_STATE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static inline
bool FUNC5(struct drm_i915_private *dev_priv,
			  i915_reg_t reg, bool enable)
{
	u32 val, status;

	val = FUNC1(reg);
	val = enable ? (val | DBUF_POWER_REQUEST) : (val & ~DBUF_POWER_REQUEST);
	FUNC2(reg, val);
	FUNC3(reg);
	FUNC4(10);

	status = FUNC1(reg) & DBUF_POWER_STATE;
	if ((enable && !status) || (!enable && status)) {
		FUNC0("DBus power %s timeout!\n",
			  enable ? "enable" : "disable");
		return false;
	}
	return true;
}