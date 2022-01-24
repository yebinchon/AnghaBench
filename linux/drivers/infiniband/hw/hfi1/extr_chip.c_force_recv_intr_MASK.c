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
struct hfi1_ctxtdata {int ireg; int /*<<< orphan*/  imask; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 scalar_t__ CCE_INT_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC1(struct hfi1_ctxtdata *rcd)
{
	FUNC0(rcd->dd, CCE_INT_FORCE + (8 * rcd->ireg), rcd->imask);
}