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
typedef  int /*<<< orphan*/  u_long ;
struct w6692_hw {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  irqcnt; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int DEBUG_HW ; 
 int EIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  w6692_irq ; 

__attribute__((used)) static int
FUNC11(struct w6692_hw *card)
{
	int	cnt = 3;
	u_long	flags;

	FUNC9(&card->lock, flags);
	FUNC0(card);
	FUNC10(&card->lock, flags);
	if (FUNC7(card->irq, w6692_irq, IRQF_SHARED, card->name, card)) {
		FUNC5("%s: couldn't get interrupt %d\n", card->name,
			card->irq);
		return -EIO;
	}
	while (cnt--) {
		FUNC9(&card->lock, flags);
		FUNC3(card);
		FUNC1(card);
		FUNC10(&card->lock, flags);
		/* Timeout 10ms */
		FUNC4(10);
		if (debug & DEBUG_HW)
			FUNC6("%s: IRQ %d count %d\n", card->name,
				  card->irq, card->irqcnt);
		if (!card->irqcnt) {
			FUNC5("%s: IRQ(%d) getting no IRQs during init %d\n",
				card->name, card->irq, 3 - cnt);
			FUNC8(card);
		} else
			return 0;
	}
	FUNC2(card->irq, card);
	return -EIO;
}