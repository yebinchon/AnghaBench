#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_6__ {int tx_suspend; } ;
struct TYPE_5__ {int rx_suspend; } ;
struct siw_qp {TYPE_3__ term_info; struct siw_cep* cep; TYPE_2__ tx_ctx; TYPE_1__ rx_stream; } ;
struct siw_cep {scalar_t__ state; int /*<<< orphan*/ * qp; int /*<<< orphan*/ * sock; TYPE_4__* cm_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* rem_ref ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  IW_CM_EVENT_CLOSE ; 
 int /*<<< orphan*/  IW_CM_EVENT_CONNECT_REPLY ; 
 int /*<<< orphan*/  SIW_CM_WORK_CLOSE_LLP ; 
#define  SIW_EPSTATE_AWAIT_MPAREP 135 
#define  SIW_EPSTATE_AWAIT_MPAREQ 134 
#define  SIW_EPSTATE_CLOSED 133 
#define  SIW_EPSTATE_CONNECTING 132 
#define  SIW_EPSTATE_IDLE 131 
#define  SIW_EPSTATE_LISTENING 130 
#define  SIW_EPSTATE_RDMA_MODE 129 
#define  SIW_EPSTATE_RECVD_MPAREQ 128 
 int /*<<< orphan*/  FUNC0 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_cep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct siw_cep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct siw_cep*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct siw_qp*) ; 
 int /*<<< orphan*/  FUNC7 (struct siw_qp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 

void FUNC11(struct siw_qp *qp, int schedule)
{
	struct siw_cep *cep = qp->cep;

	qp->rx_stream.rx_suspend = 1;
	qp->tx_ctx.tx_suspend = 1;

	if (!qp->cep)
		return;

	if (schedule) {
		FUNC3(cep, SIW_CM_WORK_CLOSE_LLP);
	} else {
		FUNC2(cep);

		if (cep->state == SIW_EPSTATE_CLOSED) {
			FUNC5(cep, "already closed\n");
			goto out;
		}
		FUNC5(cep, "immediate close, state %d\n", cep->state);

		if (qp->term_info.valid)
			FUNC7(qp);

		if (cep->cm_id) {
			switch (cep->state) {
			case SIW_EPSTATE_AWAIT_MPAREP:
				FUNC4(cep, IW_CM_EVENT_CONNECT_REPLY,
					      -EINVAL);
				break;

			case SIW_EPSTATE_RDMA_MODE:
				FUNC4(cep, IW_CM_EVENT_CLOSE, 0);
				break;

			case SIW_EPSTATE_IDLE:
			case SIW_EPSTATE_LISTENING:
			case SIW_EPSTATE_CONNECTING:
			case SIW_EPSTATE_AWAIT_MPAREQ:
			case SIW_EPSTATE_RECVD_MPAREQ:
			case SIW_EPSTATE_CLOSED:
			default:
				break;
			}
			cep->cm_id->rem_ref(cep->cm_id);
			cep->cm_id = NULL;
			FUNC0(cep);
		}
		cep->state = SIW_EPSTATE_CLOSED;

		if (cep->sock) {
			FUNC8(cep->sock);
			/*
			 * Immediately close socket
			 */
			FUNC9(cep->sock);
			cep->sock = NULL;
		}
		if (cep->qp) {
			cep->qp = NULL;
			FUNC6(qp);
		}
out:
		FUNC1(cep);
	}
}