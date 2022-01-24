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
typedef  scalar_t__ u32 ;
struct hfi1_pportdata {int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_pportdata*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC3(struct hfi1_pportdata *ppd)
{
	u32 last_local_state;
	u32 last_remote_state;

	FUNC1(ppd->dd, &last_local_state);
	FUNC2(ppd->dd, &last_remote_state);

	/*
	 * Don't report anything if there is nothing to report.  A value of
	 * 0 means the link was taken down while polling and there was no
	 * training in-process.
	 */
	if (last_local_state == 0 && last_remote_state == 0)
		return;

	FUNC0(ppd, last_local_state, "transmitted");
	FUNC0(ppd, last_remote_state, "received");
}