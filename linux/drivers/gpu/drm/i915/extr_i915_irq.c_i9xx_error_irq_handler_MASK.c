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
typedef  scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct drm_i915_private *dev_priv,
				   u32 eir, u32 eir_stuck)
{
	FUNC0("Master Error, EIR 0x%08x\n", eir);

	if (eir_stuck)
		FUNC1("EIR stuck: 0x%08x, masked\n", eir_stuck);
}