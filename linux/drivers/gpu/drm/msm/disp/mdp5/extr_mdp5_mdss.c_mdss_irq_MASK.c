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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct mdp5_mdss {TYPE_1__ irqcontroller; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_MDSS_HW_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mdp5_mdss*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *arg)
{
	struct mdp5_mdss *mdp5_mdss = arg;
	u32 intr;

	intr = FUNC4(mdp5_mdss, REG_MDSS_HW_INTR_STATUS);

	FUNC0("intr=%08x", intr);

	while (intr) {
		irq_hw_number_t hwirq = FUNC1(intr) - 1;

		FUNC2(FUNC3(
				mdp5_mdss->irqcontroller.domain, hwirq));
		intr &= ~(1 << hwirq);
	}

	return IRQ_HANDLED;
}