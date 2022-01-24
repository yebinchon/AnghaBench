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
struct spear_kbd {int mode; scalar_t__ io_base; int /*<<< orphan*/  clk; int /*<<< orphan*/  last_key; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_RESERVED ; 
 int MODE_CTL_KEYBOARD ; 
 int MODE_CTL_KEYNUM_SHIFT ; 
 int MODE_CTL_PCLK_FREQ_MSK ; 
 int MODE_CTL_PCLK_FREQ_SHIFT ; 
 scalar_t__ MODE_CTL_REG ; 
 int MODE_CTL_SCAN_RATE_80 ; 
 int MODE_CTL_START_SCAN ; 
 scalar_t__ STATUS_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct spear_kbd* FUNC2 (struct input_dev*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct input_dev *dev)
{
	struct spear_kbd *kbd = FUNC2(dev);
	int error;
	u32 val;

	kbd->last_key = KEY_RESERVED;

	error = FUNC0(kbd->clk);
	if (error)
		return error;

	/* keyboard rate to be programmed is input clock (in MHz) - 1 */
	val = FUNC1(kbd->clk) / 1000000 - 1;
	val = (val & MODE_CTL_PCLK_FREQ_MSK) << MODE_CTL_PCLK_FREQ_SHIFT;

	/* program keyboard */
	val = MODE_CTL_SCAN_RATE_80 | MODE_CTL_KEYBOARD | val |
		(kbd->mode << MODE_CTL_KEYNUM_SHIFT);
	FUNC4(val, kbd->io_base + MODE_CTL_REG);
	FUNC4(1, kbd->io_base + STATUS_REG);

	/* start key scan */
	val = FUNC3(kbd->io_base + MODE_CTL_REG);
	val |= MODE_CTL_START_SCAN;
	FUNC4(val, kbd->io_base + MODE_CTL_REG);

	return 0;
}