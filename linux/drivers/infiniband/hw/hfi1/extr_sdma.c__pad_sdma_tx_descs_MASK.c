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
typedef  int /*<<< orphan*/  u32 ;
struct sdma_txreq {scalar_t__ num_desc; scalar_t__ desc_limit; int packet_len; } ;
struct hfi1_devdata {int /*<<< orphan*/  sdma_pad_phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDMA_MAP_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,struct sdma_txreq*) ; 
 int FUNC1 (struct hfi1_devdata*,struct sdma_txreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,struct sdma_txreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdma_txreq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct hfi1_devdata *dd, struct sdma_txreq *tx)
{
	int rval = 0;

	tx->num_desc++;
	if ((FUNC4(tx->num_desc == tx->desc_limit))) {
		rval = FUNC1(dd, tx);
		if (rval) {
			FUNC0(dd, tx);
			return rval;
		}
	}
	/* finish the one just added */
	FUNC3(
		tx,
		SDMA_MAP_NONE,
		dd->sdma_pad_phys,
		sizeof(u32) - (tx->packet_len & (sizeof(u32) - 1)));
	FUNC2(dd, tx);
	return rval;
}