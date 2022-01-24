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
typedef  int uint32_t ;
typedef  int u64 ;
typedef  int u16 ;
struct scatterlist {int dummy; } ;
struct TYPE_3__ {int data_direction; } ;
struct srpt_send_ioctx {struct scatterlist imm_sg; struct srpt_recv_ioctx* recv_ioctx; TYPE_1__ cmd; } ;
struct srpt_recv_ioctx {int byte_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct srp_indirect_buf {struct srp_direct_buf* desc_list; int /*<<< orphan*/  len; TYPE_2__ table_desc; } ;
struct srp_imm_buf {int /*<<< orphan*/  len; } ;
struct srp_direct_buf {int /*<<< orphan*/  len; } ;
struct srp_cmd {int buf_fmt; int data_out_desc_cnt; int data_in_desc_cnt; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_FROM_DEVICE ; 
 int DMA_NONE ; 
 int DMA_TO_DEVICE ; 
 int EINVAL ; 
 int EIO ; 
 int SRP_DATA_DESC_DIRECT ; 
 int SRP_DATA_DESC_IMM ; 
 int SRP_DATA_DESC_INDIRECT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,void*,int) ; 
 int srp_max_req_size ; 
 int FUNC5 (struct srpt_send_ioctx*,struct srp_direct_buf*,int,struct scatterlist**,unsigned int*) ; 
 void* FUNC6 (struct srp_cmd*) ; 

__attribute__((used)) static int FUNC7(struct srpt_recv_ioctx *recv_ioctx,
		struct srpt_send_ioctx *ioctx,
		struct srp_cmd *srp_cmd, enum dma_data_direction *dir,
		struct scatterlist **sg, unsigned int *sg_cnt, u64 *data_len,
		u16 imm_data_offset)
{
	FUNC0(!dir);
	FUNC0(!data_len);

	/*
	 * The lower four bits of the buffer format field contain the DATA-IN
	 * buffer descriptor format, and the highest four bits contain the
	 * DATA-OUT buffer descriptor format.
	 */
	if (srp_cmd->buf_fmt & 0xf)
		/* DATA-IN: transfer data from target to initiator (read). */
		*dir = DMA_FROM_DEVICE;
	else if (srp_cmd->buf_fmt >> 4)
		/* DATA-OUT: transfer data from initiator to target (write). */
		*dir = DMA_TO_DEVICE;
	else
		*dir = DMA_NONE;

	/* initialize data_direction early as srpt_alloc_rw_ctxs needs it */
	ioctx->cmd.data_direction = *dir;

	if (((srp_cmd->buf_fmt & 0xf) == SRP_DATA_DESC_DIRECT) ||
	    ((srp_cmd->buf_fmt >> 4) == SRP_DATA_DESC_DIRECT)) {
		struct srp_direct_buf *db = FUNC6(srp_cmd);

		*data_len = FUNC1(db->len);
		return FUNC5(ioctx, db, 1, sg, sg_cnt);
	} else if (((srp_cmd->buf_fmt & 0xf) == SRP_DATA_DESC_INDIRECT) ||
		   ((srp_cmd->buf_fmt >> 4) == SRP_DATA_DESC_INDIRECT)) {
		struct srp_indirect_buf *idb = FUNC6(srp_cmd);
		int nbufs = FUNC1(idb->table_desc.len) /
				sizeof(struct srp_direct_buf);

		if (nbufs >
		    (srp_cmd->data_out_desc_cnt + srp_cmd->data_in_desc_cnt)) {
			FUNC2("received unsupported SRP_CMD request type (%u out + %u in != %u / %zu)\n",
			       srp_cmd->data_out_desc_cnt,
			       srp_cmd->data_in_desc_cnt,
			       FUNC1(idb->table_desc.len),
			       sizeof(struct srp_direct_buf));
			return -EINVAL;
		}

		*data_len = FUNC1(idb->len);
		return FUNC5(ioctx, idb->desc_list, nbufs,
				sg, sg_cnt);
	} else if ((srp_cmd->buf_fmt >> 4) == SRP_DATA_DESC_IMM) {
		struct srp_imm_buf *imm_buf = FUNC6(srp_cmd);
		void *data = (void *)srp_cmd + imm_data_offset;
		uint32_t len = FUNC1(imm_buf->len);
		uint32_t req_size = imm_data_offset + len;

		if (req_size > srp_max_req_size) {
			FUNC2("Immediate data (length %d + %d) exceeds request size %d\n",
			       imm_data_offset, len, srp_max_req_size);
			return -EINVAL;
		}
		if (recv_ioctx->byte_len < req_size) {
			FUNC2("Received too few data - %d < %d\n",
			       recv_ioctx->byte_len, req_size);
			return -EIO;
		}
		/*
		 * The immediate data buffer descriptor must occur before the
		 * immediate data itself.
		 */
		if ((void *)(imm_buf + 1) > (void *)data) {
			FUNC2("Received invalid write request\n");
			return -EINVAL;
		}
		*data_len = len;
		ioctx->recv_ioctx = recv_ioctx;
		if ((uintptr_t)data & 511) {
			FUNC3("Internal error - the receive buffers are not aligned properly.\n");
			return -EINVAL;
		}
		FUNC4(&ioctx->imm_sg, data, len);
		*sg = &ioctx->imm_sg;
		*sg_cnt = 1;
		return 0;
	} else {
		*data_len = 0;
		return 0;
	}
}