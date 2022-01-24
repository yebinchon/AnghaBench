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
struct riic_dev {int /*<<< orphan*/  msg_done; scalar_t__ base; int /*<<< orphan*/  err; scalar_t__ is_last; scalar_t__ bytes_left; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  ICCR2_SP ; 
 int /*<<< orphan*/  ICIER_SPIE ; 
 int ICIER_TEIE ; 
 int ICSR2_NACKF ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ RIIC_ICCR2 ; 
 scalar_t__ RIIC_ICDRR ; 
 scalar_t__ RIIC_ICIER ; 
 scalar_t__ RIIC_ICSR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct riic_dev*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct riic_dev *riic = data;

	if (FUNC1(riic->base + RIIC_ICSR2) & ICSR2_NACKF) {
		/* We got a NACKIE */
		FUNC1(riic->base + RIIC_ICDRR);	/* dummy read */
		FUNC2(riic, ICSR2_NACKF, 0, RIIC_ICSR2);
		riic->err = -ENXIO;
	} else if (riic->bytes_left) {
		return IRQ_NONE;
	}

	if (riic->is_last || riic->err) {
		FUNC2(riic, ICIER_TEIE, ICIER_SPIE, RIIC_ICIER);
		FUNC3(ICCR2_SP, riic->base + RIIC_ICCR2);
	} else {
		/* Transfer is complete, but do not send STOP */
		FUNC2(riic, ICIER_TEIE, 0, RIIC_ICIER);
		FUNC0(&riic->msg_done);
	}

	return IRQ_HANDLED;
}