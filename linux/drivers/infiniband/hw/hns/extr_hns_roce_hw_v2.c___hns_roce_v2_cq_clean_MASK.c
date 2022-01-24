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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct hns_roce_v2_cqe {int /*<<< orphan*/  byte_4; int /*<<< orphan*/  byte_16; } ;
struct hns_roce_srq {int dummy; } ;
struct TYPE_2__ {int cqe; } ;
struct hns_roce_cq {int cons_index; TYPE_1__ ib_cq; } ;

/* Variables and functions */
 int HNS_ROCE_V2_CQE_QPN_MASK ; 
 int /*<<< orphan*/  V2_CQE_BYTE_16_LCL_QPN_M ; 
 int /*<<< orphan*/  V2_CQE_BYTE_16_LCL_QPN_S ; 
 int /*<<< orphan*/  V2_CQE_BYTE_4_OWNER_S ; 
 int /*<<< orphan*/  V2_CQE_BYTE_4_S_R_S ; 
 int /*<<< orphan*/  V2_CQE_BYTE_4_WQE_INDX_M ; 
 int /*<<< orphan*/  V2_CQE_BYTE_4_WQE_INDX_S ; 
 struct hns_roce_v2_cqe* FUNC0 (struct hns_roce_cq*,int) ; 
 scalar_t__ FUNC1 (struct hns_roce_cq*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_srq*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_cq*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_v2_cqe*,struct hns_roce_v2_cqe*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct hns_roce_cq *hr_cq, u32 qpn,
				   struct hns_roce_srq *srq)
{
	struct hns_roce_v2_cqe *cqe, *dest;
	u32 prod_index;
	int nfreed = 0;
	int wqe_index;
	u8 owner_bit;

	for (prod_index = hr_cq->cons_index; FUNC1(hr_cq, prod_index);
	     ++prod_index) {
		if (prod_index > hr_cq->cons_index + hr_cq->ib_cq.cqe)
			break;
	}

	/*
	 * Now backwards through the CQ, removing CQ entries
	 * that match our QP by overwriting them with next entries.
	 */
	while ((int) --prod_index - (int) hr_cq->cons_index >= 0) {
		cqe = FUNC0(hr_cq, prod_index & hr_cq->ib_cq.cqe);
		if ((FUNC6(cqe->byte_16, V2_CQE_BYTE_16_LCL_QPN_M,
				    V2_CQE_BYTE_16_LCL_QPN_S) &
				    HNS_ROCE_V2_CQE_QPN_MASK) == qpn) {
			if (srq &&
			    FUNC5(cqe->byte_4, V2_CQE_BYTE_4_S_R_S)) {
				wqe_index = FUNC6(cqe->byte_4,
						     V2_CQE_BYTE_4_WQE_INDX_M,
						     V2_CQE_BYTE_4_WQE_INDX_S);
				FUNC2(srq, wqe_index);
			}
			++nfreed;
		} else if (nfreed) {
			dest = FUNC0(hr_cq, (prod_index + nfreed) &
					  hr_cq->ib_cq.cqe);
			owner_bit = FUNC5(dest->byte_4,
						 V2_CQE_BYTE_4_OWNER_S);
			FUNC4(dest, cqe, sizeof(*cqe));
			FUNC7(dest->byte_4, V2_CQE_BYTE_4_OWNER_S,
				     owner_bit);
		}
	}

	if (nfreed) {
		hr_cq->cons_index += nfreed;
		/*
		 * Make sure update of buffer contents is done before
		 * updating consumer index.
		 */
		FUNC8();
		FUNC3(hr_cq, hr_cq->cons_index);
	}
}