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
typedef  int u8 ;
typedef  size_t u16 ;
struct sdma_txreq {size_t num_desc; scalar_t__ desc_limit; int /*<<< orphan*/ * descp; int /*<<< orphan*/  descs; int /*<<< orphan*/ * coalesce_buf; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SDMA_AHG_APPLY_UPDATE1 ; 
 int FUNC1 (struct sdma_txreq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(
	struct hfi1_devdata *dd,
	struct sdma_txreq *tx)
{
	u16 i;

	if (tx->num_desc) {
		u8 skip = 0, mode = FUNC1(tx);

		/* unmap first */
		FUNC3(dd, &tx->descp[0]);
		/* determine number of AHG descriptors to skip */
		if (mode > SDMA_AHG_APPLY_UPDATE1)
			skip = mode >> 1;
		for (i = 1 + skip; i < tx->num_desc; i++)
			FUNC3(dd, &tx->descp[i]);
		tx->num_desc = 0;
	}
	FUNC2(tx->coalesce_buf);
	tx->coalesce_buf = NULL;
	/* kmalloc'ed descp */
	if (FUNC4(tx->desc_limit > FUNC0(tx->descs))) {
		tx->desc_limit = FUNC0(tx->descs);
		FUNC2(tx->descp);
	}
}