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
typedef  int u8 ;
typedef  int u16 ;
struct ocrdma_eqe {int id_valid; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  eq_intr_cnt; } ;
struct ocrdma_eq {int cq_cnt; TYPE_2__ q; TYPE_1__ aic_obj; struct ocrdma_dev* dev; } ;
struct ocrdma_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  eqe ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int OCRDMA_EQE_FOR_CQE_MASK ; 
 int OCRDMA_EQE_MAJOR_CODE_MASK ; 
 int OCRDMA_EQE_MAJOR_CODE_SHIFT ; 
 int OCRDMA_EQE_RESOURCE_ID_SHIFT ; 
 int OCRDMA_EQE_VALID_MASK ; 
 int OCRDMA_MAJOR_CODE_SENTINAL ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_eq*) ; 
 struct ocrdma_eqe* FUNC2 (struct ocrdma_eq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_eqe*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *handle)
{
	struct ocrdma_eq *eq = handle;
	struct ocrdma_dev *dev = eq->dev;
	struct ocrdma_eqe eqe;
	struct ocrdma_eqe *ptr;
	u16 cq_id;
	u8 mcode;
	int budget = eq->cq_cnt;

	do {
		ptr = FUNC2(eq);
		eqe = *ptr;
		FUNC3(&eqe, sizeof(eqe));
		mcode = (eqe.id_valid & OCRDMA_EQE_MAJOR_CODE_MASK)
				>> OCRDMA_EQE_MAJOR_CODE_SHIFT;
		if (mcode == OCRDMA_MAJOR_CODE_SENTINAL)
			FUNC5("EQ full on eqid = 0x%x, eqe = 0x%x\n",
			       eq->q.id, eqe.id_valid);
		if ((eqe.id_valid & OCRDMA_EQE_VALID_MASK) == 0)
			break;

		ptr->id_valid = 0;
		/* ring eq doorbell as soon as its consumed. */
		FUNC4(dev, eq->q.id, false, true, 1);
		/* check whether its CQE or not. */
		if ((eqe.id_valid & OCRDMA_EQE_FOR_CQE_MASK) == 0) {
			cq_id = eqe.id_valid >> OCRDMA_EQE_RESOURCE_ID_SHIFT;
			FUNC0(dev, cq_id);
		}
		FUNC1(eq);

		/* There can be a stale EQE after the last bound CQ is
		 * destroyed. EQE valid and budget == 0 implies this.
		 */
		if (budget)
			budget--;

	} while (budget);

	eq->aic_obj.eq_intr_cnt++;
	FUNC4(dev, eq->q.id, true, true, 0);
	return IRQ_HANDLED;
}