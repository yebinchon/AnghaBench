#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  flush_work; } ;
struct intel_guc_log {TYPE_1__ relay; } ;
struct intel_guc {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_guc_log*) ; 
 TYPE_2__* FUNC5 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 struct intel_guc* FUNC8 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct intel_guc_log *log)
{
	struct intel_guc *guc = FUNC8(log);
	struct drm_i915_private *i915 = FUNC5(guc)->i915;

	FUNC2(log);
	FUNC7(i915);

	FUNC1(&log->relay.flush_work);

	FUNC9(&log->relay.lock);
	FUNC0(!FUNC6(log));
	FUNC4(log);
	FUNC3(log);
	FUNC10(&log->relay.lock);
}