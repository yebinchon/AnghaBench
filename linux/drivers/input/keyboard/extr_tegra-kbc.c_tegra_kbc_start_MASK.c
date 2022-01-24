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
struct tegra_kbc {int repeat_cnt; int /*<<< orphan*/  irq; scalar_t__ mmio; scalar_t__ num_pressed_keys; int /*<<< orphan*/  cp_dly_jiffies; int /*<<< orphan*/  debounce_cnt; int /*<<< orphan*/  rst; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ KBC_CONTROL_0 ; 
 int KBC_CONTROL_FIFO_CNT_INT_EN ; 
 int KBC_CONTROL_KBC_EN ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int) ; 
 scalar_t__ KBC_INIT_DLY_0 ; 
 scalar_t__ KBC_INT_0 ; 
 scalar_t__ KBC_KP_ENT0_0 ; 
 scalar_t__ KBC_KP_ENT1_0 ; 
 int /*<<< orphan*/  KBC_MAX_DEBOUNCE_CNT ; 
 scalar_t__ KBC_RPT_DLY_0 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_kbc*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_kbc*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct tegra_kbc *kbc)
{
	unsigned int debounce_cnt;
	u32 val = 0;
	int ret;

	ret = FUNC2(kbc->clk);
	if (ret)
		return ret;

	/* Reset the KBC controller to clear all previous status.*/
	FUNC6(kbc->rst);
	FUNC10(100);
	FUNC7(kbc->rst);
	FUNC10(100);

	FUNC8(kbc);
	FUNC9(kbc, false);

	FUNC12(kbc->repeat_cnt, kbc->mmio + KBC_RPT_DLY_0);

	/* Keyboard debounce count is maximum of 12 bits. */
	debounce_cnt = FUNC4(kbc->debounce_cnt, KBC_MAX_DEBOUNCE_CNT);
	val = FUNC0(debounce_cnt);
	val |= FUNC1(1); /* set fifo interrupt threshold to 1 */
	val |= KBC_CONTROL_FIFO_CNT_INT_EN;  /* interrupt on FIFO threshold */
	val |= KBC_CONTROL_KBC_EN;     /* enable */
	FUNC12(val, kbc->mmio + KBC_CONTROL_0);

	/*
	 * Compute the delay(ns) from interrupt mode to continuous polling
	 * mode so the timer routine is scheduled appropriately.
	 */
	val = FUNC5(kbc->mmio + KBC_INIT_DLY_0);
	kbc->cp_dly_jiffies = FUNC11((val & 0xfffff) * 32);

	kbc->num_pressed_keys = 0;

	/*
	 * Atomically clear out any remaining entries in the key FIFO
	 * and enable keyboard interrupts.
	 */
	while (1) {
		val = FUNC5(kbc->mmio + KBC_INT_0);
		val >>= 4;
		if (!val)
			break;

		val = FUNC5(kbc->mmio + KBC_KP_ENT0_0);
		val = FUNC5(kbc->mmio + KBC_KP_ENT1_0);
	}
	FUNC12(0x7, kbc->mmio + KBC_INT_0);

	FUNC3(kbc->irq);

	return 0;
}