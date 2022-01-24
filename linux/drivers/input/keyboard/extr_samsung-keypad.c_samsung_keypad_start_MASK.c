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
struct samsung_keypad {int stopped; TYPE_1__* pdev; scalar_t__ base; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SAMSUNG_KEYIFCOL ; 
 scalar_t__ SAMSUNG_KEYIFCON ; 
 unsigned int SAMSUNG_KEYIFCON_INT_F_EN ; 
 unsigned int SAMSUNG_KEYIFCON_INT_R_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct samsung_keypad *keypad)
{
	unsigned int val;

	FUNC1(&keypad->pdev->dev);

	/* Tell IRQ thread that it may poll the device. */
	keypad->stopped = false;

	FUNC0(keypad->clk);

	/* Enable interrupt bits. */
	val = FUNC3(keypad->base + SAMSUNG_KEYIFCON);
	val |= SAMSUNG_KEYIFCON_INT_F_EN | SAMSUNG_KEYIFCON_INT_R_EN;
	FUNC4(val, keypad->base + SAMSUNG_KEYIFCON);

	/* KEYIFCOL reg clear. */
	FUNC4(0, keypad->base + SAMSUNG_KEYIFCOL);

	FUNC2(&keypad->pdev->dev);
}