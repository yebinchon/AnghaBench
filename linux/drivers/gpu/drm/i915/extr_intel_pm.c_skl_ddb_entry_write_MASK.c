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
struct skl_ddb_entry {int end; int start; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct drm_i915_private *dev_priv,
				i915_reg_t reg,
				const struct skl_ddb_entry *entry)
{
	if (entry->end)
		FUNC0(reg, (entry->end - 1) << 16 | entry->start);
	else
		FUNC0(reg, 0);
}