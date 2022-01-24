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
typedef  int u32 ;
struct tegra_kbc {int /*<<< orphan*/  clk; int /*<<< orphan*/  timer; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ KBC_CONTROL_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct tegra_kbc *kbc)
{
	unsigned long flags;
	u32 val;

	FUNC4(&kbc->lock, flags);
	val = FUNC3(kbc->mmio + KBC_CONTROL_0);
	val &= ~1;
	FUNC6(val, kbc->mmio + KBC_CONTROL_0);
	FUNC5(&kbc->lock, flags);

	FUNC2(kbc->irq);
	FUNC1(&kbc->timer);

	FUNC0(kbc->clk);
}