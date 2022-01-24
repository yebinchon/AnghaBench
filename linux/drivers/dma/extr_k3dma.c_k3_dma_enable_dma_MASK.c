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
struct k3_dma_dev {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ CH_PRI ; 
 scalar_t__ INT_ERR1_MASK ; 
 scalar_t__ INT_ERR2_MASK ; 
 scalar_t__ INT_TC1_MASK ; 
 scalar_t__ INT_TC2_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct k3_dma_dev *d, bool on)
{
	if (on) {
		/* set same priority */
		FUNC0(0x0, d->base + CH_PRI);

		/* unmask irq */
		FUNC0(0xffff, d->base + INT_TC1_MASK);
		FUNC0(0xffff, d->base + INT_TC2_MASK);
		FUNC0(0xffff, d->base + INT_ERR1_MASK);
		FUNC0(0xffff, d->base + INT_ERR2_MASK);
	} else {
		/* mask irq */
		FUNC0(0x0, d->base + INT_TC1_MASK);
		FUNC0(0x0, d->base + INT_TC2_MASK);
		FUNC0(0x0, d->base + INT_ERR1_MASK);
		FUNC0(0x0, d->base + INT_ERR2_MASK);
	}
}