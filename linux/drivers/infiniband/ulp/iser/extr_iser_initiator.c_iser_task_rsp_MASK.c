#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iscsi_hdr {int /*<<< orphan*/  itt; int /*<<< orphan*/  opcode; } ;
struct iser_rx_desc {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  data; struct iscsi_hdr iscsi_header; } ;
struct iser_conn {scalar_t__ min_posted_rx; scalar_t__ qp_max_recv_dtos; int /*<<< orphan*/  iscsi_conn; } ;
struct ib_wc {scalar_t__ status; int byte_len; int /*<<< orphan*/  wr_cqe; TYPE_1__* qp; } ;
struct ib_cq {int dummy; } ;
struct ib_conn {int post_recv_buf_count; TYPE_2__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  ib_device; } ;
struct TYPE_3__ {struct ib_conn* qp_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ IB_WC_SUCCESS ; 
 int /*<<< orphan*/  ISCSI_ERR_CONN_FAILED ; 
 int ISER_HEADERS_LEN ; 
 int /*<<< orphan*/  ISER_RX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iscsi_hdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct iser_conn*,struct ib_wc*,struct iscsi_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_wc*,char*) ; 
 int FUNC8 (struct iser_conn*,int) ; 
 struct iser_rx_desc* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__,scalar_t__) ; 
 struct iser_conn* FUNC11 (struct ib_conn*) ; 
 scalar_t__ FUNC12 (int) ; 

void FUNC13(struct ib_cq *cq, struct ib_wc *wc)
{
	struct ib_conn *ib_conn = wc->qp->qp_context;
	struct iser_conn *iser_conn = FUNC11(ib_conn);
	struct iser_rx_desc *desc = FUNC9(wc->wr_cqe);
	struct iscsi_hdr *hdr;
	int length;
	int outstanding, count, err;

	if (FUNC12(wc->status != IB_WC_SUCCESS)) {
		FUNC7(wc, "task_rsp");
		return;
	}

	FUNC0(ib_conn->device->ib_device,
				   desc->dma_addr, ISER_RX_PAYLOAD_SIZE,
				   DMA_FROM_DEVICE);

	hdr = &desc->iscsi_header;
	length = wc->byte_len - ISER_HEADERS_LEN;

	FUNC5("op 0x%x itt 0x%x dlen %d\n", hdr->opcode,
		 hdr->itt, length);

	if (FUNC4(iser_conn, wc, hdr)) {
		FUNC2(iser_conn->iscsi_conn,
				   ISCSI_ERR_CONN_FAILED);
		return;
	}

	FUNC3(iser_conn->iscsi_conn, hdr, desc->data, length);

	FUNC1(ib_conn->device->ib_device,
				      desc->dma_addr, ISER_RX_PAYLOAD_SIZE,
				      DMA_FROM_DEVICE);

	/* decrementing conn->post_recv_buf_count only --after-- freeing the   *
	 * task eliminates the need to worry on tasks which are completed in   *
	 * parallel to the execution of iser_conn_term. So the code that waits *
	 * for the posted rx bufs refcount to become zero handles everything   */
	ib_conn->post_recv_buf_count--;

	outstanding = ib_conn->post_recv_buf_count;
	if (outstanding + iser_conn->min_posted_rx <= iser_conn->qp_max_recv_dtos) {
		count = FUNC10(iser_conn->qp_max_recv_dtos - outstanding,
			    iser_conn->min_posted_rx);
		err = FUNC8(iser_conn, count);
		if (err)
			FUNC6("posting %d rx bufs err %d\n", count, err);
	}
}