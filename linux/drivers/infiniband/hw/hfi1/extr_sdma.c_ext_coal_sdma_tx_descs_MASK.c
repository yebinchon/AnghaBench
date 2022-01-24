#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sdma_txreq {int coalesce_buf; int coalesce_idx; int tlen; int packet_len; int /*<<< orphan*/  desc_limit; } ;
struct page {int dummy; } ;
struct hfi1_devdata {TYPE_1__* pcidev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  MAX_DESC ; 
 int SDMA_MAP_NONE ; 
 int SDMA_MAP_PAGE ; 
 int /*<<< orphan*/  SDMA_MAP_SINGLE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,struct sdma_txreq*) ; 
 int FUNC2 (struct hfi1_devdata*,struct sdma_txreq*) ; 
 int FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ,struct sdma_txreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct hfi1_devdata *dd, struct sdma_txreq *tx,
			   int type, void *kvaddr, struct page *page,
			   unsigned long offset, u16 len)
{
	int pad_len, rval;
	dma_addr_t addr;

	rval = FUNC2(dd, tx);
	if (rval) {
		FUNC1(dd, tx);
		return rval;
	}

	/* If coalesce buffer is allocated, copy data into it */
	if (tx->coalesce_buf) {
		if (type == SDMA_MAP_NONE) {
			FUNC1(dd, tx);
			return -EINVAL;
		}

		if (type == SDMA_MAP_PAGE) {
			kvaddr = FUNC6(page);
			kvaddr += offset;
		} else if (FUNC0(!kvaddr)) {
			FUNC1(dd, tx);
			return -EINVAL;
		}

		FUNC8(tx->coalesce_buf + tx->coalesce_idx, kvaddr, len);
		tx->coalesce_idx += len;
		if (type == SDMA_MAP_PAGE)
			FUNC7(page);

		/* If there is more data, return */
		if (tx->tlen - tx->coalesce_idx)
			return 0;

		/* Whole packet is received; add any padding */
		pad_len = tx->packet_len & (sizeof(u32) - 1);
		if (pad_len) {
			pad_len = sizeof(u32) - pad_len;
			FUNC9(tx->coalesce_buf + tx->coalesce_idx, 0, pad_len);
			/* padding is taken care of for coalescing case */
			tx->packet_len += pad_len;
			tx->tlen += pad_len;
		}

		/* dma map the coalesce buffer */
		addr = FUNC4(&dd->pcidev->dev,
				      tx->coalesce_buf,
				      tx->tlen,
				      DMA_TO_DEVICE);

		if (FUNC10(FUNC5(&dd->pcidev->dev, addr))) {
			FUNC1(dd, tx);
			return -ENOSPC;
		}

		/* Add descriptor for coalesce buffer */
		tx->desc_limit = MAX_DESC;
		return FUNC3(dd, SDMA_MAP_SINGLE, tx,
					 addr, tx->tlen);
	}

	return 1;
}