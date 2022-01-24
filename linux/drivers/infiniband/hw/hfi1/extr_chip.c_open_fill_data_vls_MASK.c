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
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSC_DATA_VL_ENABLE ; 
 scalar_t__ FUNC0 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 

int FUNC2(struct hfi1_devdata *dd)
{
	if (FUNC0(dd))
		return 1;

	FUNC1(dd, PSC_DATA_VL_ENABLE);

	return 0;
}