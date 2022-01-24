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
typedef  int u16 ;
struct locomokbd {scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ LOCOMO_KIC ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct locomokbd*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct locomokbd *locomokbd = dev_id;
	u16 r;

	r = FUNC0(locomokbd->base + LOCOMO_KIC);
	if ((r & 0x0001) == 0)
		return IRQ_HANDLED;

	FUNC1(r & ~0x0100, locomokbd->base + LOCOMO_KIC); /* Ack */

	/** wait chattering delay **/
	FUNC3(100);

	FUNC2(locomokbd);
	return IRQ_HANDLED;
}