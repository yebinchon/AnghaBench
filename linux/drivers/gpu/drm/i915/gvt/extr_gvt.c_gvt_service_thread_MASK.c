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
struct intel_gvt {scalar_t__ service_request; int /*<<< orphan*/  service_thread_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_GVT_REQUEST_EMULATE_VBLANK ; 
 int /*<<< orphan*/  INTEL_GVT_REQUEST_EVENT_SCHED ; 
 int /*<<< orphan*/  INTEL_GVT_REQUEST_SCHED ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_gvt*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(void *data)
{
	struct intel_gvt *gvt = (struct intel_gvt *)data;
	int ret;

	FUNC1("service thread start\n");

	while (!FUNC4()) {
		ret = FUNC7(gvt->service_thread_wq,
				FUNC4() || gvt->service_request);

		if (FUNC4())
			break;

		if (FUNC0(ret, "service thread is waken up by signal.\n"))
			continue;

		if (FUNC5(INTEL_GVT_REQUEST_EMULATE_VBLANK,
					(void *)&gvt->service_request))
			FUNC2(gvt);

		if (FUNC6(INTEL_GVT_REQUEST_SCHED,
				(void *)&gvt->service_request) ||
			FUNC6(INTEL_GVT_REQUEST_EVENT_SCHED,
					(void *)&gvt->service_request)) {
			FUNC3(gvt);
		}
	}

	return 0;
}