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
 int /*<<< orphan*/  CCE_CTRL ; 
 int /*<<< orphan*/  CCE_STATUS ; 
 int /*<<< orphan*/  CCE_STATUS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,int,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct hfi1_devdata *dd, u64 status_bits,
			     u64 ctrl_bits)
{
	unsigned long timeout;
	u64 reg;

	/* is the condition present? */
	reg = FUNC2(dd, CCE_STATUS);
	if ((reg & status_bits) == 0)
		return;

	/* clear the condition */
	FUNC5(dd, CCE_CTRL, ctrl_bits);

	/* wait for the condition to clear */
	timeout = jiffies + FUNC1(CCE_STATUS_TIMEOUT);
	while (1) {
		reg = FUNC2(dd, CCE_STATUS);
		if ((reg & status_bits) == 0)
			return;
		if (FUNC3(jiffies, timeout)) {
			FUNC0(dd,
				   "Timeout waiting for CceStatus to clear bits 0x%llx, remaining 0x%llx\n",
				   status_bits, reg & status_bits);
			return;
		}
		FUNC4(1);
	}
}