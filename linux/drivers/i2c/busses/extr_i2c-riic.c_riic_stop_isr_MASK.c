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
struct riic_dev {int /*<<< orphan*/  msg_done; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ RIIC_ICIER ; 
 scalar_t__ RIIC_ICSR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct riic_dev *riic = data;

	/* read back registers to confirm writes have fully propagated */
	FUNC2(0, riic->base + RIIC_ICSR2);
	FUNC1(riic->base + RIIC_ICSR2);
	FUNC2(0, riic->base + RIIC_ICIER);
	FUNC1(riic->base + RIIC_ICIER);

	FUNC0(&riic->msg_done);

	return IRQ_HANDLED;
}