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
typedef  int /*<<< orphan*/  u32 ;
struct spear_kbd {int /*<<< orphan*/  last_key; int /*<<< orphan*/  clk; scalar_t__ io_base; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_RESERVED ; 
 scalar_t__ MODE_CTL_REG ; 
 int /*<<< orphan*/  MODE_CTL_START_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spear_kbd* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct input_dev *dev)
{
	struct spear_kbd *kbd = FUNC1(dev);
	u32 val;

	/* stop key scan */
	val = FUNC2(kbd->io_base + MODE_CTL_REG);
	val &= ~MODE_CTL_START_SCAN;
	FUNC3(val, kbd->io_base + MODE_CTL_REG);

	FUNC0(kbd->clk);

	kbd->last_key = KEY_RESERVED;
}