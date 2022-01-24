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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ocrdma_sge {int dummy; } ;
struct ocrdma_hdr_wqe {int cw; int /*<<< orphan*/  rsvd_tag; scalar_t__ total_len; } ;
struct ib_recv_wr {int num_sge; int /*<<< orphan*/  sg_list; } ;

/* Variables and functions */
 int OCRDMA_FLAG_SIG ; 
 int OCRDMA_TYPE_LKEY ; 
 int OCRDMA_WQE_FLAGS_SHIFT ; 
 int OCRDMA_WQE_SIZE_SHIFT ; 
 int OCRDMA_WQE_STRIDE ; 
 int OCRDMA_WQE_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_hdr_wqe*,struct ocrdma_sge*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_hdr_wqe*,int) ; 

__attribute__((used)) static void FUNC2(struct ocrdma_hdr_wqe *rqe,
			     const struct ib_recv_wr *wr, u16 tag)
{
	u32 wqe_size = 0;
	struct ocrdma_sge *sge;
	if (wr->num_sge)
		wqe_size = (wr->num_sge * sizeof(*sge)) + sizeof(*rqe);
	else
		wqe_size = sizeof(*sge) + sizeof(*rqe);

	rqe->cw = ((wqe_size / OCRDMA_WQE_STRIDE) <<
				OCRDMA_WQE_SIZE_SHIFT);
	rqe->cw |= (OCRDMA_FLAG_SIG << OCRDMA_WQE_FLAGS_SHIFT);
	rqe->cw |= (OCRDMA_TYPE_LKEY << OCRDMA_WQE_TYPE_SHIFT);
	rqe->total_len = 0;
	rqe->rsvd_tag = tag;
	sge = (struct ocrdma_sge *)(rqe + 1);
	FUNC0(rqe, sge, wr->num_sge, wr->sg_list);
	FUNC1(rqe, wqe_size);
}