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
struct irq_data {int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIE ; 
 int /*<<< orphan*/  IAR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	unsigned long mask = 1 << d->hwirq;

	FUNC0("irq-xilinx: disable_and_ack: %ld\n", d->hwirq);
	FUNC1(CIE, mask);
	FUNC1(IAR, mask);
}