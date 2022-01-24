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
struct bcm_iproc_i2c_dev {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_CMD_OFFSET ; 
 int /*<<< orphan*/  S_CMD_START_BUSY_SHIFT ; 
 int S_CMD_STATUS_MASK ; 
 int S_CMD_STATUS_SHIFT ; 
 int S_CMD_STATUS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_iproc_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_iproc_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct bcm_iproc_i2c_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(
	struct bcm_iproc_i2c_dev *iproc_i2c)
{
	u32 val;

	val = FUNC4(iproc_i2c, S_CMD_OFFSET);
	/* status is valid only when START_BUSY is cleared after it was set */
	if (val & FUNC0(S_CMD_START_BUSY_SHIFT))
		return;

	val = (val >> S_CMD_STATUS_SHIFT) & S_CMD_STATUS_MASK;
	if (val == S_CMD_STATUS_TIMEOUT) {
		FUNC3(iproc_i2c->device, "slave random stretch time timeout\n");

		/* re-initialize i2c for recovery */
		FUNC1(iproc_i2c, false);
		FUNC2(iproc_i2c, true);
		FUNC1(iproc_i2c, true);
	}
}