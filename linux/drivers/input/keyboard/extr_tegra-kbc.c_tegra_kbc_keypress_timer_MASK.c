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
struct timer_list {int dummy; } ;
struct tegra_kbc {int repoll_dly; unsigned int num_pressed_keys; int /*<<< orphan*/  lock; int /*<<< orphan*/  idev; int /*<<< orphan*/ * current_keys; int /*<<< orphan*/  timer; scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ KBC_INT_0 ; 
 struct tegra_kbc* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct tegra_kbc* kbc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_kbc*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_kbc*,int) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct tegra_kbc *kbc = FUNC0(kbc, t, timer);
	unsigned long flags;
	u32 val;
	unsigned int i;

	FUNC6(&kbc->lock, flags);

	val = (FUNC5(kbc->mmio + KBC_INT_0) >> 4) & 0xf;
	if (val) {
		unsigned long dly;

		FUNC8(kbc);

		/*
		 * If more than one keys are pressed we need not wait
		 * for the repoll delay.
		 */
		dly = (val == 1) ? kbc->repoll_dly : 1;
		FUNC3(&kbc->timer, jiffies + FUNC4(dly));
	} else {
		/* Release any pressed keys and exit the polling loop */
		for (i = 0; i < kbc->num_pressed_keys; i++)
			FUNC1(kbc->idev, kbc->current_keys[i], 0);
		FUNC2(kbc->idev);

		kbc->num_pressed_keys = 0;

		/* All keys are released so enable the keypress interrupt */
		FUNC9(kbc, true);
	}

	FUNC7(&kbc->lock, flags);
}