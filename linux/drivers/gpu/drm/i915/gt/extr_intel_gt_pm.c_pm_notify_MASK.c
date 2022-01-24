#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pm_notifications; } ;
struct drm_i915_private {TYPE_1__ gt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC1(struct drm_i915_private *i915, int state)
{
	FUNC0(&i915->gt.pm_notifications, state, i915);
}