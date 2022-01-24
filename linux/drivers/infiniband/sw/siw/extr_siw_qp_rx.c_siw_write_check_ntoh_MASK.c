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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct iwarp_rdma_write {int /*<<< orphan*/  sink_to; int /*<<< orphan*/  sink_stag; } ;
struct TYPE_2__ {struct iwarp_rdma_write rwrite; } ;
struct siw_rx_stream {scalar_t__ ddp_stag; scalar_t__ ddp_to; TYPE_1__ hdr; } ;
struct siw_rx_fpdu {scalar_t__ pbl_idx; scalar_t__ first_ddp_seg; } ;
typedef  enum ddp_ecode { ____Placeholder_ddp_ecode } ddp_ecode ;

/* Variables and functions */
 int DDP_ECODE_T_BASE_BOUNDS ; 
 int DDP_ECODE_T_INVALID_STAG ; 
 int /*<<< orphan*/  DDP_ETYPE_TAGGED_BUF ; 
 int EINVAL ; 
 int /*<<< orphan*/  TERM_ERROR_LAYER_DDP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct siw_rx_stream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct siw_rx_stream *srx,
				struct siw_rx_fpdu *frx)
{
	struct iwarp_rdma_write *write = &srx->hdr.rwrite;
	enum ddp_ecode ecode;

	u32 sink_stag = FUNC0(write->sink_stag);
	u64 sink_to = FUNC1(write->sink_to);

	if (frx->first_ddp_seg) {
		srx->ddp_stag = sink_stag;
		srx->ddp_to = sink_to;
		frx->pbl_idx = 0;
	} else {
		if (FUNC6(srx->ddp_stag != sink_stag)) {
			FUNC2("siw: [QP %u]: write stag: %08x != %08x\n",
				FUNC3(FUNC4(srx)), sink_stag,
				srx->ddp_stag);
			ecode = DDP_ECODE_T_INVALID_STAG;
			goto error;
		}
		if (FUNC6(srx->ddp_to != sink_to)) {
			FUNC2("siw: [QP %u]: write off: %016llx != %016llx\n",
				FUNC3(FUNC4(srx)),
				(unsigned long long)sink_to,
				(unsigned long long)srx->ddp_to);
			ecode = DDP_ECODE_T_BASE_BOUNDS;
			goto error;
		}
	}
	return 0;
error:
	FUNC5(FUNC4(srx), TERM_ERROR_LAYER_DDP,
			   DDP_ETYPE_TAGGED_BUF, ecode, 0);
	return -EINVAL;
}