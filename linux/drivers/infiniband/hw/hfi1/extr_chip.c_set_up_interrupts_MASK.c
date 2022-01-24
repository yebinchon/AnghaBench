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
 int /*<<< orphan*/  IS_FIRST_SOURCE ; 
 int /*<<< orphan*/  IS_LAST_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*) ; 
 int FUNC2 (struct hfi1_devdata*) ; 
 int FUNC3 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hfi1_devdata *dd)
{
	int ret;

	/* mask all interrupts */
	FUNC5(dd, IS_FIRST_SOURCE, IS_LAST_SOURCE, false);

	/* clear all pending interrupts */
	FUNC0(dd);

	/* reset general handler mask, chip MSI-X mappings */
	FUNC4(dd);

	/* ask for MSI-X interrupts */
	ret = FUNC2(dd);
	if (ret)
		return ret;

	ret = FUNC3(dd);
	if (ret)
		FUNC1(dd);

	return ret;
}