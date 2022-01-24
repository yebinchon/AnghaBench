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
struct rvt_qp {int s_flags; int /*<<< orphan*/  s_lock; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_flags; } ;
struct hfi1_pkt_state {int pkts_sent; scalar_t__ timeout_int; scalar_t__ timeout; TYPE_2__* ppd; int /*<<< orphan*/  flags; int /*<<< orphan*/  cpu; int /*<<< orphan*/  in_thread; } ;
struct TYPE_4__ {TYPE_1__* dd; int /*<<< orphan*/  hfi1_wq; } ;
struct TYPE_3__ {int /*<<< orphan*/ * send_schedule; } ;

/* Variables and functions */
 int HFI1_S_TID_BUSY_SET ; 
 int RVT_S_BUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_qp*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct rvt_qp*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC10(struct rvt_qp *qp, struct hfi1_pkt_state *ps,
			      bool tid)
{
	ps->pkts_sent = true;

	if (FUNC8(FUNC6(jiffies, ps->timeout))) {
		if (!ps->in_thread ||
		    FUNC9(ps->cpu, ps->ppd->hfi1_wq)) {
			FUNC3(&qp->s_lock, ps->flags);
			if (!tid) {
				qp->s_flags &= ~RVT_S_BUSY;
				FUNC1(qp);
			} else {
				struct hfi1_qp_priv *priv = qp->priv;

				if (priv->s_flags &
				    HFI1_S_TID_BUSY_SET) {
					qp->s_flags &= ~RVT_S_BUSY;
					priv->s_flags &=
						~(HFI1_S_TID_BUSY_SET |
						  RVT_S_BUSY);
				} else {
					priv->s_flags &= ~RVT_S_BUSY;
				}
				FUNC2(qp);
			}

			FUNC4(&qp->s_lock, ps->flags);
			FUNC5(*ps->ppd->dd->send_schedule);
			FUNC7(qp, true);
			return true;
		}

		FUNC0();
		FUNC5(*ps->ppd->dd->send_schedule);
		ps->timeout = jiffies + ps->timeout_int;
	}

	FUNC7(qp, false);
	return false;
}