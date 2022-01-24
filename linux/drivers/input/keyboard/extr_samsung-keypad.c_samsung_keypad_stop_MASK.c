#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct samsung_keypad {int stopped; TYPE_1__* pdev; int /*<<< orphan*/  irq; int /*<<< orphan*/  clk; scalar_t__ base; int /*<<< orphan*/  wait; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SAMSUNG_KEYIFCON ; 
 unsigned int SAMSUNG_KEYIFCON_INT_F_EN ; 
 unsigned int SAMSUNG_KEYIFCON_INT_R_EN ; 
 scalar_t__ SAMSUNG_KEYIFSTSCLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct samsung_keypad *keypad)
{
	unsigned int val;

	FUNC3(&keypad->pdev->dev);

	/* Signal IRQ thread to stop polling and disable the handler. */
	keypad->stopped = true;
	FUNC6(&keypad->wait);
	FUNC1(keypad->irq);

	/* Clear interrupt. */
	FUNC7(~0x0, keypad->base + SAMSUNG_KEYIFSTSCLR);

	/* Disable interrupt bits. */
	val = FUNC5(keypad->base + SAMSUNG_KEYIFCON);
	val &= ~(SAMSUNG_KEYIFCON_INT_F_EN | SAMSUNG_KEYIFCON_INT_R_EN);
	FUNC7(val, keypad->base + SAMSUNG_KEYIFCON);

	FUNC0(keypad->clk);

	/*
	 * Now that chip should not generate interrupts we can safely
	 * re-enable the handler.
	 */
	FUNC2(keypad->irq);

	FUNC4(&keypad->pdev->dev);
}