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
typedef  int u32 ;
struct edp_aux {int msg_err; int /*<<< orphan*/  msg_comp; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EDP_INTR_AUX_I2C_ERR ; 
 int EDP_INTR_TRANS_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ REG_EDP_AUX_TRANS_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC3(struct edp_aux *aux, u32 isr)
{
	if (isr & EDP_INTR_TRANS_STATUS) {
		FUNC0("isr=%x", isr);
		FUNC2(aux->base + REG_EDP_AUX_TRANS_CTRL, 0);

		if (isr & EDP_INTR_AUX_I2C_ERR)
			aux->msg_err = true;
		else
			aux->msg_err = false;

		FUNC1(&aux->msg_comp);
	}

	return IRQ_HANDLED;
}