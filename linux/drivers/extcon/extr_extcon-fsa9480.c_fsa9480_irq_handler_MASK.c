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
struct fsa9480_usbsw {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct fsa9480_usbsw*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsa9480_usbsw*,int*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct fsa9480_usbsw *usbsw = data;
	int intr = 0;

	/* clear interrupt */
	FUNC1(usbsw, &intr);
	if (!intr)
		return IRQ_NONE;

	/* device detection */
	FUNC0(usbsw);

	return IRQ_HANDLED;
}