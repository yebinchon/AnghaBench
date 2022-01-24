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
struct qib_pportdata {int /*<<< orphan*/  sdma_userpending; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_pportdata*,int /*<<< orphan*/ *) ; 

void FUNC4(struct qib_pportdata *ppd)
{
	if (FUNC0(ppd)) {
		FUNC2(ppd);
		if (!FUNC1(&ppd->sdma_userpending))
			FUNC3(ppd, &ppd->sdma_userpending);
	}
}