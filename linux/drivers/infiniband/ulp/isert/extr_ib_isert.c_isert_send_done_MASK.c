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
struct isert_conn {int /*<<< orphan*/  conn; TYPE_2__* cm_id; } ;
struct isert_cmd {TYPE_3__* iscsi_cmd; int /*<<< orphan*/  comp_work; } ;
struct iser_tx_desc {int dummy; } ;
struct ib_wc {scalar_t__ status; int /*<<< orphan*/  wr_cqe; TYPE_1__* qp; } ;
struct ib_device {int dummy; } ;
struct ib_cq {int dummy; } ;
struct TYPE_6__ {int i_state; } ;
struct TYPE_5__ {struct ib_device* device; } ;
struct TYPE_4__ {struct isert_conn* qp_context; } ;

/* Variables and functions */
 scalar_t__ IB_WC_SUCCESS ; 
 scalar_t__ IB_WC_WR_FLUSH_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  ISTATE_SEND_LOGOUTRSP 131 
#define  ISTATE_SEND_REJECT 130 
#define  ISTATE_SEND_TASKMGTRSP 129 
#define  ISTATE_SEND_TEXTRSP 128 
 int ISTATE_SENT_STATUS ; 
 struct iser_tx_desc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isert_comp_wq ; 
 int /*<<< orphan*/  FUNC3 (struct iser_tx_desc*,struct isert_cmd*,struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct isert_cmd*) ; 
 int /*<<< orphan*/  isert_do_control_comp ; 
 int /*<<< orphan*/  FUNC5 (struct ib_wc*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct iser_tx_desc*,struct ib_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct isert_cmd* FUNC8 (struct iser_tx_desc*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(struct ib_cq *cq, struct ib_wc *wc)
{
	struct isert_conn *isert_conn = wc->qp->qp_context;
	struct ib_device *ib_dev = isert_conn->cm_id->device;
	struct iser_tx_desc *tx_desc = FUNC1(wc->wr_cqe);
	struct isert_cmd *isert_cmd = FUNC8(tx_desc);

	if (FUNC9(wc->status != IB_WC_SUCCESS)) {
		FUNC5(wc, "send");
		if (wc->status != IB_WC_WR_FLUSH_ERR)
			FUNC2(isert_conn->conn, 0);
		FUNC3(tx_desc, isert_cmd, ib_dev, true);
		return;
	}

	FUNC4("Cmd %p\n", isert_cmd);

	switch (isert_cmd->iscsi_cmd->i_state) {
	case ISTATE_SEND_TASKMGTRSP:
	case ISTATE_SEND_LOGOUTRSP:
	case ISTATE_SEND_REJECT:
	case ISTATE_SEND_TEXTRSP:
		FUNC6(tx_desc, ib_dev);

		FUNC0(&isert_cmd->comp_work, isert_do_control_comp);
		FUNC7(isert_comp_wq, &isert_cmd->comp_work);
		return;
	default:
		isert_cmd->iscsi_cmd->i_state = ISTATE_SENT_STATUS;
		FUNC3(tx_desc, isert_cmd, ib_dev, false);
		break;
	}
}