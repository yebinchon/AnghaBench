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
struct isar_hw {int (* read_reg ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  clsb; int /*<<< orphan*/  name; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISAR_IRQBIT ; 
 int ISAR_IRQSTA ; 
 int /*<<< orphan*/  FUNC0 (struct isar_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct isar_hw*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct isar_hw *isar, int maxdelay)
{
	int t = maxdelay;
	u8 irq;

	irq = isar->read_reg(isar->hw, ISAR_IRQBIT);
	while (t && !(irq & ISAR_IRQSTA)) {
		FUNC4(1);
		t--;
	}
	if (t)	{
		FUNC0(isar);
		FUNC2(isar, NULL);
	}
	FUNC1("%s: pulled %d bytes after %d us\n",
		 isar->name, isar->clsb, maxdelay - t);
	return t;
}