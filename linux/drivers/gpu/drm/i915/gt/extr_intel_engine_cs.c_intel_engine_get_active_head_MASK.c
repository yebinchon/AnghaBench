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
typedef  int /*<<< orphan*/  u64 ;
struct intel_engine_cs {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTHD ; 
 int /*<<< orphan*/  FUNC0 (struct intel_engine_cs const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  RING_ACTHD ; 
 int /*<<< orphan*/  RING_ACTHD_UDW ; 

u64 FUNC3(const struct intel_engine_cs *engine)
{
	struct drm_i915_private *i915 = engine->i915;

	u64 acthd;

	if (FUNC2(i915) >= 8)
		acthd = FUNC1(engine, RING_ACTHD, RING_ACTHD_UDW);
	else if (FUNC2(i915) >= 4)
		acthd = FUNC0(engine, RING_ACTHD);
	else
		acthd = FUNC0(engine, ACTHD);

	return acthd;
}