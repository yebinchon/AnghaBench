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
struct hfi1_ctxtdata {int /*<<< orphan*/ * groups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct hfi1_ctxtdata *rcd)
{
	FUNC2(rcd->groups);
	rcd->groups = NULL;
	FUNC1(rcd);

	FUNC0(rcd);
}