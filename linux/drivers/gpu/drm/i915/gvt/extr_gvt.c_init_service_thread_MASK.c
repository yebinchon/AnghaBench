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
struct intel_gvt {int /*<<< orphan*/  service_thread; int /*<<< orphan*/  service_thread_wq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  gvt_service_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct intel_gvt*,char*) ; 

__attribute__((used)) static int FUNC5(struct intel_gvt *gvt)
{
	FUNC3(&gvt->service_thread_wq);

	gvt->service_thread = FUNC4(gvt_service_thread,
			gvt, "gvt_service_thread");
	if (FUNC0(gvt->service_thread)) {
		FUNC2("fail to start service thread.\n");
		return FUNC1(gvt->service_thread);
	}
	return 0;
}