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
struct intel_dp {int /*<<< orphan*/  lane_count; int /*<<< orphan*/  link_rate; struct intel_connector* attached_connector; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; TYPE_2__ base; } ;
struct intel_connector {int /*<<< orphan*/  modeset_retry_work; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct intel_dp *intel_dp)
{
	struct intel_connector *intel_connector = intel_dp->attached_connector;

	if (!FUNC3(intel_dp))
		goto failure_handling;
	if (!FUNC2(intel_dp))
		goto failure_handling;

	FUNC0("[CONNECTOR:%d:%s] Link Training Passed at Link Rate = %d, Lane count = %d",
		      intel_connector->base.base.id,
		      intel_connector->base.name,
		      intel_dp->link_rate, intel_dp->lane_count);
	return;

 failure_handling:
	FUNC0("[CONNECTOR:%d:%s] Link Training failed at link rate = %d, lane count = %d",
		      intel_connector->base.base.id,
		      intel_connector->base.name,
		      intel_dp->link_rate, intel_dp->lane_count);
	if (!FUNC1(intel_dp,
						     intel_dp->link_rate,
						     intel_dp->lane_count))
		/* Schedule a Hotplug Uevent to userspace to start modeset */
		FUNC4(&intel_connector->modeset_retry_work);
	return;
}