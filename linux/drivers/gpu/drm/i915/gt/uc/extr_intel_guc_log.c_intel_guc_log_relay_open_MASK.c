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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  flush_work; } ;
struct intel_guc_log {TYPE_1__ relay; int /*<<< orphan*/  vma; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct intel_guc_log*) ; 
 int FUNC1 (struct intel_guc_log*) ; 
 int FUNC2 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_highpri_wq ; 

int FUNC9(struct intel_guc_log *log)
{
	int ret;

	if (!log->vma)
		return -ENODEV;

	FUNC6(&log->relay.lock);

	if (FUNC5(log)) {
		ret = -EEXIST;
		goto out_unlock;
	}

	/*
	 * We require SSE 4.1 for fast reads from the GuC log buffer and
	 * it should be present on the chipsets supporting GuC based
	 * submisssions.
	 */
	if (!FUNC4()) {
		ret = -ENXIO;
		goto out_unlock;
	}

	ret = FUNC2(log);
	if (ret)
		goto out_unlock;

	ret = FUNC1(log);
	if (ret)
		goto out_relay;

	FUNC7(&log->relay.lock);

	FUNC0(log);

	/*
	 * When GuC is logging without us relaying to userspace, we're ignoring
	 * the flush notification. This means that we need to unconditionally
	 * flush on relay enabling, since GuC only notifies us once.
	 */
	FUNC8(system_highpri_wq, &log->relay.flush_work);

	return 0;

out_relay:
	FUNC3(log);
out_unlock:
	FUNC7(&log->relay.lock);

	return ret;
}