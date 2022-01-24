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
struct hfi1_pportdata {scalar_t__ qsfp_retry_count; int /*<<< orphan*/  start_link_work; int /*<<< orphan*/  link_wq; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 scalar_t__ MAX_QSFP_RETRIES ; 
 int /*<<< orphan*/  QSFP_RETRY_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_pportdata*) ; 
 scalar_t__ FUNC5 (struct hfi1_pportdata*) ; 

__attribute__((used)) static void FUNC6(struct hfi1_pportdata *ppd)
{
	if (FUNC5(ppd)) {
		/* read failed */
		if (ppd->qsfp_retry_count >= MAX_QSFP_RETRIES) {
			FUNC0(ppd->dd, "QSFP not responding, giving up\n");
			return;
		}
		FUNC1(ppd->dd,
			    "QSFP not responding, waiting and retrying %d\n",
			    (int)ppd->qsfp_retry_count);
		ppd->qsfp_retry_count++;
		FUNC3(ppd->link_wq, &ppd->start_link_work,
				   FUNC2(QSFP_RETRY_WAIT));
		return;
	}
	ppd->qsfp_retry_count = 0;

	FUNC4(ppd);
}