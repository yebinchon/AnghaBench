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
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct TYPE_6__ {TYPE_2__ base; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct drm_i915_private *
FUNC2(struct intel_dp *intel_dp)
{
	return FUNC1(FUNC0(intel_dp)->base.base.dev);
}