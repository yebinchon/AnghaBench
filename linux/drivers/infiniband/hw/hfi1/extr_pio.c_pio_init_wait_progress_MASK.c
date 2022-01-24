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
struct hfi1_devdata {scalar_t__ icode; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 scalar_t__ ICODE_FPGA_EMULATION ; 
 int /*<<< orphan*/  SEND_PIO_INIT_CTXT ; 
 int SEND_PIO_INIT_CTXT_PIO_INIT_ERR_SMASK ; 
 int SEND_PIO_INIT_CTXT_PIO_INIT_IN_PROGRESS_SMASK ; 
 int FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct hfi1_devdata *dd)
{
	u64 reg;
	int max, count = 0;

	/* max is the longest possible HW init time / delay */
	max = (dd->icode == ICODE_FPGA_EMULATION) ? 120 : 5;
	while (1) {
		reg = FUNC0(dd, SEND_PIO_INIT_CTXT);
		if (!(reg & SEND_PIO_INIT_CTXT_PIO_INIT_IN_PROGRESS_SMASK))
			break;
		if (count >= max)
			return -ETIMEDOUT;
		FUNC1(5);
		count++;
	}

	return reg & SEND_PIO_INIT_CTXT_PIO_INIT_ERR_SMASK ? -EIO : 0;
}