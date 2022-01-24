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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct isert_conn {int /*<<< orphan*/  conn; TYPE_2__* cm_id; } ;
struct iser_ctrl {int flags; int /*<<< orphan*/  write_va; int /*<<< orphan*/  write_stag; int /*<<< orphan*/  read_va; int /*<<< orphan*/  read_stag; } ;
struct iscsi_hdr {int /*<<< orphan*/  flags; int /*<<< orphan*/  itt; int /*<<< orphan*/  opcode; } ;
struct iser_rx_desc {int in_use; int /*<<< orphan*/  dma_addr; struct iser_ctrl iser_header; struct iscsi_hdr iscsi_header; } ;
struct ib_wc {scalar_t__ status; scalar_t__ byte_len; int /*<<< orphan*/  wr_cqe; TYPE_1__* qp; } ;
struct ib_device {int dummy; } ;
struct ib_cq {int dummy; } ;
struct TYPE_4__ {struct ib_device* device; } ;
struct TYPE_3__ {struct isert_conn* qp_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ IB_WC_SUCCESS ; 
 scalar_t__ IB_WC_WR_FLUSH_ERR ; 
#define  ISCSI_CTRL 129 
 scalar_t__ ISER_HEADERS_LEN ; 
#define  ISER_HELLO 128 
 int ISER_RSV ; 
 int /*<<< orphan*/  ISER_RX_PAYLOAD_SIZE ; 
 int ISER_WSV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct iser_rx_desc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_wc*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct isert_conn*,struct iser_rx_desc*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(struct ib_cq *cq, struct ib_wc *wc)
{
	struct isert_conn *isert_conn = wc->qp->qp_context;
	struct ib_device *ib_dev = isert_conn->cm_id->device;
	struct iser_rx_desc *rx_desc = FUNC2(wc->wr_cqe);
	struct iscsi_hdr *hdr = &rx_desc->iscsi_header;
	struct iser_ctrl *iser_ctrl = &rx_desc->iser_header;
	uint64_t read_va = 0, write_va = 0;
	uint32_t read_stag = 0, write_stag = 0;

	if (FUNC11(wc->status != IB_WC_SUCCESS)) {
		FUNC8(wc, "recv");
		if (wc->status != IB_WC_WR_FLUSH_ERR)
			FUNC5(isert_conn->conn, 0);
		return;
	}

	rx_desc->in_use = true;

	FUNC3(ib_dev, rx_desc->dma_addr,
			ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);

	FUNC6("DMA: 0x%llx, iSCSI opcode: 0x%02x, ITT: 0x%08x, flags: 0x%02x dlen: %d\n",
		 rx_desc->dma_addr, hdr->opcode, hdr->itt, hdr->flags,
		 (int)(wc->byte_len - ISER_HEADERS_LEN));

	switch (iser_ctrl->flags & 0xF0) {
	case ISCSI_CTRL:
		if (iser_ctrl->flags & ISER_RSV) {
			read_stag = FUNC0(iser_ctrl->read_stag);
			read_va = FUNC1(iser_ctrl->read_va);
			FUNC6("ISER_RSV: read_stag: 0x%x read_va: 0x%llx\n",
				  read_stag, (unsigned long long)read_va);
		}
		if (iser_ctrl->flags & ISER_WSV) {
			write_stag = FUNC0(iser_ctrl->write_stag);
			write_va = FUNC1(iser_ctrl->write_va);
			FUNC6("ISER_WSV: write_stag: 0x%x write_va: 0x%llx\n",
				  write_stag, (unsigned long long)write_va);
		}

		FUNC6("ISER ISCSI_CTRL PDU\n");
		break;
	case ISER_HELLO:
		FUNC7("iSER Hello message\n");
		break;
	default:
		FUNC10("Unknown iSER hdr flags: 0x%02x\n", iser_ctrl->flags);
		break;
	}

	FUNC9(isert_conn, rx_desc,
			read_stag, read_va, write_stag, write_va);

	FUNC4(ib_dev, rx_desc->dma_addr,
			ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
}