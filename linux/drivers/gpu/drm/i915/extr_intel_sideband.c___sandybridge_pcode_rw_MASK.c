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
struct intel_uncore {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  sb_lock; struct intel_uncore uncore; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GEN6_PCODE_DATA ; 
 int /*<<< orphan*/  GEN6_PCODE_DATA1 ; 
 int /*<<< orphan*/  GEN6_PCODE_MAILBOX ; 
 int GEN6_PCODE_READY ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct drm_i915_private *i915,
				  u32 mbox, u32 *val, u32 *val1,
				  int fast_timeout_us,
				  int slow_timeout_ms,
				  bool is_read)
{
	struct intel_uncore *uncore = &i915->uncore;

	FUNC6(&i915->sb_lock);

	/*
	 * GEN6_PCODE_* are outside of the forcewake domain, we can
	 * use te fw I915_READ variants to reduce the amount of work
	 * required when reading/writing.
	 */

	if (FUNC4(uncore, GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY)
		return -EAGAIN;

	FUNC5(uncore, GEN6_PCODE_DATA, *val);
	FUNC5(uncore, GEN6_PCODE_DATA1, val1 ? *val1 : 0);
	FUNC5(uncore,
			      GEN6_PCODE_MAILBOX, GEN6_PCODE_READY | mbox);

	if (FUNC1(uncore,
					 GEN6_PCODE_MAILBOX,
					 GEN6_PCODE_READY, 0,
					 fast_timeout_us,
					 slow_timeout_ms,
					 &mbox))
		return -ETIMEDOUT;

	if (is_read)
		*val = FUNC4(uncore, GEN6_PCODE_DATA);
	if (is_read && val1)
		*val1 = FUNC4(uncore, GEN6_PCODE_DATA1);

	if (FUNC0(i915) > 6)
		return FUNC3(mbox);
	else
		return FUNC2(mbox);
}