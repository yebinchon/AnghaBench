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
 int /*<<< orphan*/  CCE_ERR_INT ; 
 int /*<<< orphan*/  GPIO_ASSERT_INT ; 
 int /*<<< orphan*/  IS_DC_END ; 
 int /*<<< orphan*/  IS_DC_START ; 
 int /*<<< orphan*/  IS_SENDCREDIT_END ; 
 int /*<<< orphan*/  IS_SENDCREDIT_START ; 
 int /*<<< orphan*/  IS_SENDCTXT_ERR_END ; 
 int /*<<< orphan*/  IS_SENDCTXT_ERR_START ; 
 int /*<<< orphan*/  MISC_ERR_INT ; 
 int /*<<< orphan*/  PBC_INT ; 
 int /*<<< orphan*/  PIO_ERR_INT ; 
 int /*<<< orphan*/  TCRIT_INT ; 
 int /*<<< orphan*/  TXE_ERR_INT ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct hfi1_devdata *dd)
{
	FUNC0(dd, CCE_ERR_INT, MISC_ERR_INT, true);
	FUNC0(dd, PIO_ERR_INT, TXE_ERR_INT, true);
	FUNC0(dd, IS_SENDCTXT_ERR_START, IS_SENDCTXT_ERR_END, true);
	FUNC0(dd, PBC_INT, GPIO_ASSERT_INT, true);
	FUNC0(dd, TCRIT_INT, TCRIT_INT, true);
	FUNC0(dd, IS_DC_START, IS_DC_END, true);
	FUNC0(dd, IS_SENDCREDIT_START, IS_SENDCREDIT_END, true);
}