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
typedef  int /*<<< orphan*/  u16 ;
struct sdma_txreq {scalar_t__ num_desc; scalar_t__ desc_limit; } ;
struct hfi1_devdata {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SDMA_MAP_NONE ; 
 int FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ,struct sdma_txreq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hfi1_devdata*,struct sdma_txreq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(
	struct hfi1_devdata *dd,
	struct sdma_txreq *tx,
	dma_addr_t addr,
	u16 len)
{
	int rval;

	if ((FUNC2(tx->num_desc == tx->desc_limit))) {
		rval = FUNC1(dd, tx, SDMA_MAP_NONE,
					      NULL, NULL, 0, 0);
		if (rval <= 0)
			return rval;
	}

	return FUNC0(dd, SDMA_MAP_NONE, tx, addr, len);
}