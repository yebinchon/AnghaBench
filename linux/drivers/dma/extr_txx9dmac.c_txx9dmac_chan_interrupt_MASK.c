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
struct txx9dmac_chan {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct txx9dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct txx9dmac_chan *dc = dev_id;

	FUNC2(FUNC0(&dc->chan), "interrupt: status=%#x\n",
			FUNC1(dc, CSR));

	FUNC4(&dc->tasklet);
	/*
	 * Just disable the interrupts. We'll turn them back on in the
	 * softirq handler.
	 */
	FUNC3(irq);

	return IRQ_HANDLED;
}