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
typedef  size_t u16 ;
struct hfi1_user_sdma_pkt_q {int /*<<< orphan*/  subctxt; int /*<<< orphan*/  ctxt; int /*<<< orphan*/  dd; } ;
struct hfi1_user_sdma_comp_q {TYPE_1__* comps; } ;
typedef  enum hfi1_sdma_comp_state { ____Placeholder_hfi1_sdma_comp_state } hfi1_sdma_comp_state ;
struct TYPE_2__ {int errcode; int status; } ;

/* Variables and functions */
 int ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct hfi1_user_sdma_pkt_q *pq,
				  struct hfi1_user_sdma_comp_q *cq,
				  u16 idx, enum hfi1_sdma_comp_state state,
				  int ret)
{
	if (state == ERROR)
		cq->comps[idx].errcode = -ret;
	FUNC0(); /* make sure errcode is visible first */
	cq->comps[idx].status = state;
	FUNC1(pq->dd, pq->ctxt, pq->subctxt,
					idx, state, ret);
}