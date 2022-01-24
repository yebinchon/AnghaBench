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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_CM_GLOBAL_CREDIT ; 
 int SEND_CM_GLOBAL_CREDIT_AU_SHIFT ; 
 int SEND_CM_GLOBAL_CREDIT_AU_SMASK ; 
 int FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct hfi1_devdata *dd, u8 vau)
{
	u64 reg = FUNC0(dd, SEND_CM_GLOBAL_CREDIT);

	/* do not modify other values in the register */
	reg &= ~SEND_CM_GLOBAL_CREDIT_AU_SMASK;
	reg |= (u64)vau << SEND_CM_GLOBAL_CREDIT_AU_SHIFT;
	FUNC1(dd, SEND_CM_GLOBAL_CREDIT, reg);
}