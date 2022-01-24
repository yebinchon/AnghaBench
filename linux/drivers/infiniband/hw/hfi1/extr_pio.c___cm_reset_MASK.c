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
typedef  int u64 ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_CTRL ; 
 int SEND_CTRL_CM_RESET_SMASK ; 
 int FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct hfi1_devdata *dd, u64 sendctrl)
{
	FUNC2(dd, SEND_CTRL, sendctrl | SEND_CTRL_CM_RESET_SMASK);
	while (1) {
		FUNC1(1);
		sendctrl = FUNC0(dd, SEND_CTRL);
		if ((sendctrl & SEND_CTRL_CM_RESET_SMASK) == 0)
			break;
	}
}