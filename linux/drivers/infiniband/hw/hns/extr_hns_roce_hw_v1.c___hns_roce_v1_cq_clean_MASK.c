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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct hns_roce_srq {int dummy; } ;
struct hns_roce_cqe {int /*<<< orphan*/  cqe_byte_4; int /*<<< orphan*/  cqe_byte_16; } ;
struct TYPE_2__ {int cqe; } ;
struct hns_roce_cq {int cons_index; TYPE_1__ ib_cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQE_BYTE_16_LOCAL_QPN_M ; 
 int /*<<< orphan*/  CQE_BYTE_16_LOCAL_QPN_S ; 
 int /*<<< orphan*/  CQE_BYTE_4_OWNER_S ; 
 int HNS_ROCE_CQE_QPN_MASK ; 
 struct hns_roce_cqe* FUNC0 (struct hns_roce_cq*,int) ; 
 scalar_t__ FUNC1 (struct hns_roce_cq*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_cq*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_cqe*,struct hns_roce_cqe*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct hns_roce_cq *hr_cq, u32 qpn,
				   struct hns_roce_srq *srq)
{
	struct hns_roce_cqe *cqe, *dest;
	u32 prod_index;
	int nfreed = 0;
	u8 owner_bit;

	for (prod_index = hr_cq->cons_index; FUNC1(hr_cq, prod_index);
	     ++prod_index) {
		if (prod_index == hr_cq->cons_index + hr_cq->ib_cq.cqe)
			break;
	}

	/*
	 * Now backwards through the CQ, removing CQ entries
	 * that match our QP by overwriting them with next entries.
	 */
	while ((int) --prod_index - (int) hr_cq->cons_index >= 0) {
		cqe = FUNC0(hr_cq, prod_index & hr_cq->ib_cq.cqe);
		if ((FUNC5(cqe->cqe_byte_16, CQE_BYTE_16_LOCAL_QPN_M,
				     CQE_BYTE_16_LOCAL_QPN_S) &
				     HNS_ROCE_CQE_QPN_MASK) == qpn) {
			/* In v1 engine, not support SRQ */
			++nfreed;
		} else if (nfreed) {
			dest = FUNC0(hr_cq, (prod_index + nfreed) &
				       hr_cq->ib_cq.cqe);
			owner_bit = FUNC4(dest->cqe_byte_4,
						 CQE_BYTE_4_OWNER_S);
			FUNC3(dest, cqe, sizeof(*cqe));
			FUNC6(dest->cqe_byte_4, CQE_BYTE_4_OWNER_S,
				     owner_bit);
		}
	}

	if (nfreed) {
		hr_cq->cons_index += nfreed;
		/*
		 * Make sure update of buffer contents is done before
		 * updating consumer index.
		 */
		FUNC7();

		FUNC2(hr_cq, hr_cq->cons_index);
	}
}