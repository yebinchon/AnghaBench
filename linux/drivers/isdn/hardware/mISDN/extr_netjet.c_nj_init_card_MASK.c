#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_4__ {int (* init ) (TYPE_2__*) ;} ;
struct tiger_hw {int irq; int /*<<< orphan*/  lock; int /*<<< orphan*/ * bc; TYPE_2__ isac; int /*<<< orphan*/  name; TYPE_1__* pdev; } ;
struct TYPE_3__ {int irq; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  ISDN_P_NONE ; 
 int FUNC0 (struct tiger_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tiger_hw*) ; 
 int /*<<< orphan*/  nj_irq ; 
 int /*<<< orphan*/  FUNC3 (struct tiger_hw*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tiger_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC9(struct tiger_hw *card)
{
	u_long flags;
	int ret;

	FUNC6(&card->lock, flags);
	FUNC2(card);
	FUNC7(&card->lock, flags);

	card->irq = card->pdev->irq;
	if (FUNC5(card->irq, nj_irq, IRQF_SHARED, card->name, card)) {
		FUNC4("%s: couldn't get interrupt %d\n",
			card->name, card->irq);
		card->irq = -1;
		return -EIO;
	}

	FUNC6(&card->lock, flags);
	FUNC3(card);
	ret = card->isac.init(&card->isac);
	if (ret)
		goto error;
	ret = FUNC0(card);
	if (ret)
		goto error;
	FUNC1(&card->bc[0], ISDN_P_NONE);
	FUNC1(&card->bc[1], ISDN_P_NONE);
error:
	FUNC7(&card->lock, flags);
	return ret;
}