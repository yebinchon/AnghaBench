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
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SEND_PIO_ERR_CLEAR ; 
 int /*<<< orphan*/  SEND_PIO_ERR_CLEAR_PIO_INIT_SM_IN_ERR_SMASK ; 
 int /*<<< orphan*/  SEND_PIO_INIT_CTXT ; 
 int /*<<< orphan*/  SEND_PIO_INIT_CTXT_PIO_ALL_CTXT_INIT_SMASK ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,char*) ; 
 int FUNC1 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct hfi1_devdata *dd)
{
	int ret;

	/* make sure the init engine is not busy */
	ret = FUNC1(dd);
	/* ignore any timeout */
	if (ret == -EIO) {
		/* clear the error */
		FUNC3(dd, SEND_PIO_ERR_CLEAR,
			  SEND_PIO_ERR_CLEAR_PIO_INIT_SM_IN_ERR_SMASK);
	}

	/* reset init all */
	FUNC3(dd, SEND_PIO_INIT_CTXT,
		  SEND_PIO_INIT_CTXT_PIO_ALL_CTXT_INIT_SMASK);
	FUNC2(2);
	ret = FUNC1(dd);
	if (ret < 0) {
		FUNC0(dd,
			   "PIO send context init %s while initializing all PIO blocks\n",
			   ret == -ETIMEDOUT ? "is stuck" : "had an error");
	}
}