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
typedef  int /*<<< orphan*/  u32 ;
struct creq_base {int dummy; } ;
struct bnxt_qplib_hwq {scalar_t__ pbl_ptr; int /*<<< orphan*/  cons; } ;
struct bnxt_qplib_rcfw {int /*<<< orphan*/  worker; struct bnxt_qplib_hwq creq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bnxt_qplib_hwq*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct creq_base*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_instance)
{
	struct bnxt_qplib_rcfw *rcfw = dev_instance;
	struct bnxt_qplib_hwq *creq = &rcfw->creq;
	struct creq_base **creq_ptr;
	u32 sw_cons;

	/* Prefetch the CREQ element */
	sw_cons = FUNC0(creq->cons, creq);
	creq_ptr = (struct creq_base **)rcfw->creq.pbl_ptr;
	FUNC3(&creq_ptr[FUNC2(sw_cons)][FUNC1(sw_cons)]);

	FUNC4(&rcfw->worker);

	return IRQ_HANDLED;
}