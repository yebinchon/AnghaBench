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
struct i915_psr {int sink_not_reliable; TYPE_1__* dp; } ;
struct drm_i915_private {struct i915_psr psr; } ;
struct TYPE_2__ {int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_SET_POWER ; 
 int /*<<< orphan*/  DP_SET_POWER_D0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct drm_i915_private *dev_priv)
{
	struct i915_psr *psr = &dev_priv->psr;

	FUNC1(psr->dp);
	psr->sink_not_reliable = true;
	/* let's make sure that sink is awaken */
	FUNC0(&psr->dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
}