#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  qid; } ;
struct t4_wq {TYPE_1__ sq; } ;
struct TYPE_5__ {void* abs_rqe_idx; } ;
struct TYPE_6__ {TYPE_2__ srcqe; } ;
struct t4_cqe {TYPE_3__ u; int /*<<< orphan*/  bits_type_ts; void* header; } ;
struct t4_cq {size_t sw_pidx; struct t4_cqe* sw_queue; scalar_t__ gen; int /*<<< orphan*/  sw_cidx; } ;
typedef  int /*<<< orphan*/  cqe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_RI_SEND ; 
 int /*<<< orphan*/  T4_ERR_SWFLUSH ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct t4_cqe*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct t4_wq*,struct t4_cq*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct t4_cq*) ; 

__attribute__((used)) static void FUNC11(struct t4_wq *wq, struct t4_cq *cq, u32 srqidx)
{
	struct t4_cqe cqe;

	FUNC9("wq %p cq %p sw_cidx %u sw_pidx %u\n",
		 wq, cq, cq->sw_cidx, cq->sw_pidx);
	FUNC8(&cqe, 0, sizeof(cqe));
	cqe.header = FUNC6(FUNC3(T4_ERR_SWFLUSH) |
				 FUNC1(FW_RI_SEND) |
				 FUNC5(0) |
				 FUNC4(1) |
				 FUNC2(wq->sq.qid));
	cqe.bits_type_ts = FUNC7(FUNC0((u64)cq->gen));
	if (srqidx)
		cqe.u.srcqe.abs_rqe_idx = FUNC6(srqidx);
	cq->sw_queue[cq->sw_pidx] = cqe;
	FUNC10(cq);
}