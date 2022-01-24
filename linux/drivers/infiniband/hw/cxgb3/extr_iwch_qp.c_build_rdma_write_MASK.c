#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* plen; void* num_sgle; TYPE_2__* sgl; void* to_sink; void* stag_sink; scalar_t__* reserved; int /*<<< orphan*/  rdmaop; } ;
union t3_wr {TYPE_4__ write; } ;
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_6__ {void* imm_data; } ;
struct ib_send_wr {int num_sge; scalar_t__ opcode; TYPE_3__* sg_list; TYPE_1__ ex; } ;
struct TYPE_10__ {int rkey; int /*<<< orphan*/  remote_addr; } ;
struct TYPE_8__ {int length; int lkey; int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {void* to; void* len; void* stag; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 scalar_t__ IB_WR_RDMA_WRITE_WITH_IMM ; 
 int T3_MAX_SGE ; 
 int /*<<< orphan*/  T3_RDMA_WRITE ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (struct ib_send_wr const*) ; 

__attribute__((used)) static int FUNC3(union t3_wr *wqe, const struct ib_send_wr *wr,
			    u8 *flit_cnt)
{
	int i;
	u32 plen;
	if (wr->num_sge > T3_MAX_SGE)
		return -EINVAL;
	wqe->write.rdmaop = T3_RDMA_WRITE;
	wqe->write.reserved[0] = 0;
	wqe->write.reserved[1] = 0;
	wqe->write.reserved[2] = 0;
	wqe->write.stag_sink = FUNC0(FUNC2(wr)->rkey);
	wqe->write.to_sink = FUNC1(FUNC2(wr)->remote_addr);

	if (wr->opcode == IB_WR_RDMA_WRITE_WITH_IMM) {
		plen = 4;
		wqe->write.sgl[0].stag = wr->ex.imm_data;
		wqe->write.sgl[0].len = FUNC0(0);
		wqe->write.num_sgle = FUNC0(0);
		*flit_cnt = 6;
	} else {
		plen = 0;
		for (i = 0; i < wr->num_sge; i++) {
			if ((plen + wr->sg_list[i].length) < plen) {
				return -EMSGSIZE;
			}
			plen += wr->sg_list[i].length;
			wqe->write.sgl[i].stag =
			    FUNC0(wr->sg_list[i].lkey);
			wqe->write.sgl[i].len =
			    FUNC0(wr->sg_list[i].length);
			wqe->write.sgl[i].to =
			    FUNC1(wr->sg_list[i].addr);
		}
		wqe->write.num_sgle = FUNC0(wr->num_sge);
		*flit_cnt = 5 + ((wr->num_sge) << 1);
	}
	wqe->write.plen = FUNC0(plen);
	return 0;
}