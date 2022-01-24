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
struct qm_eqe {int dummy; } ;
struct hisi_qp {int /*<<< orphan*/  work; int /*<<< orphan*/  wq; } ;
struct TYPE_2__ {int eq_head; int eqc_phase; } ;
struct hisi_qm {TYPE_1__ status; struct qm_eqe* eqe; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  QM_DOORBELL_CMD_EQ ; 
 int FUNC0 (struct qm_eqe*) ; 
 int QM_Q_DEPTH ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_qm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct hisi_qp* FUNC2 (struct hisi_qm*,struct qm_eqe*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct hisi_qm *qm = data;
	struct qm_eqe *eqe = qm->eqe + qm->status.eq_head;
	struct hisi_qp *qp;
	int eqe_num = 0;

	while (FUNC0(eqe) == qm->status.eqc_phase) {
		eqe_num++;
		qp = FUNC2(qm, eqe);
		if (qp)
			FUNC3(qp->wq, &qp->work);

		if (qm->status.eq_head == QM_Q_DEPTH - 1) {
			qm->status.eqc_phase = !qm->status.eqc_phase;
			eqe = qm->eqe;
			qm->status.eq_head = 0;
		} else {
			eqe++;
			qm->status.eq_head++;
		}

		if (eqe_num == QM_Q_DEPTH / 2 - 1) {
			eqe_num = 0;
			FUNC1(qm, 0, QM_DOORBELL_CMD_EQ, qm->status.eq_head, 0);
		}
	}

	FUNC1(qm, 0, QM_DOORBELL_CMD_EQ, qm->status.eq_head, 0);

	return IRQ_HANDLED;
}