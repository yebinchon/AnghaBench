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
typedef  int u8 ;
struct sfax_hw {int /*<<< orphan*/  lock; int /*<<< orphan*/  name; int /*<<< orphan*/  isac; int /*<<< orphan*/  isar; int /*<<< orphan*/  irqcnt; scalar_t__ cfg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int /*<<< orphan*/  ISAR_IRQBIT ; 
 int ISAR_IRQSTA ; 
 int FUNC0 (struct sfax_hw*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sfax_hw*,int /*<<< orphan*/ ) ; 
 int SFAX_TIGER_IRQ_BIT ; 
 scalar_t__ TIGER_AUX_STATUS ; 
 int FUNC2 (scalar_t__) ; 
 int irqloops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC10(int intno, void *dev_id)
{
	struct sfax_hw	*sf = dev_id;
	u8 val;
	int cnt = irqloops;

	FUNC8(&sf->lock);
	val = FUNC2(sf->cfg + TIGER_AUX_STATUS);
	if (val & SFAX_TIGER_IRQ_BIT) { /* for us or shared ? */
		FUNC9(&sf->lock);
		return IRQ_NONE; /* shared */
	}
	sf->irqcnt++;
	val = FUNC1(sf, ISAR_IRQBIT);
Start_ISAR:
	if (val & ISAR_IRQSTA)
		FUNC4(&sf->isar);
	val = FUNC0(sf, ISAC_ISTA);
	if (val)
		FUNC3(&sf->isac, val);
	val = FUNC1(sf, ISAR_IRQBIT);
	if ((val & ISAR_IRQSTA) && cnt--)
		goto Start_ISAR;
	if (cnt < irqloops)
		FUNC5("%s: %d irqloops cpu%d\n", sf->name,
			 irqloops - cnt, FUNC7());
	if (irqloops && !cnt)
		FUNC6("%s: %d IRQ LOOP cpu%d\n", sf->name,
			  irqloops, FUNC7());
	FUNC9(&sf->lock);
	return IRQ_HANDLED;
}