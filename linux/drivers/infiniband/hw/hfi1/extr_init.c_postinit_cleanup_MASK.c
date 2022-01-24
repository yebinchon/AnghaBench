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
struct hfi1_devdata {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*) ; 

__attribute__((used)) static void FUNC7(struct hfi1_devdata *dd)
{
	FUNC6(dd);
	FUNC1(dd);
	FUNC2(dd);

	FUNC5(dd);
	FUNC4(dd->pcidev);

	FUNC0(dd);

	FUNC3(dd);
}