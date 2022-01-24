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
struct anx78xx {int /*<<< orphan*/ * map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 size_t I2C_IDX_RX_P0 ; 
 int SP_CKDT_CHG ; 
 int /*<<< orphan*/  SP_INT_STATUS1_REG ; 
 int SP_SCDT_CHG ; 
 int /*<<< orphan*/  SP_SYSTEM_STATUS_REG ; 
 unsigned int SP_TMDS_CLOCK_DET ; 
 unsigned int SP_TMDS_DE_DET ; 
 int FUNC2 (struct anx78xx*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct anx78xx *anx78xx, u8 irq)
{
	unsigned int value;
	int err;

	FUNC0("Handle HDMI interrupt 1: %02x\n", irq);

	err = FUNC4(anx78xx->map[I2C_IDX_RX_P0], SP_INT_STATUS1_REG,
			   irq);
	if (err) {
		FUNC1("Write HDMI int 1 failed: %d\n", err);
		return;
	}

	if ((irq & SP_CKDT_CHG) || (irq & SP_SCDT_CHG)) {
		FUNC0("IRQ: HDMI input detected\n");

		err = FUNC3(anx78xx->map[I2C_IDX_RX_P0],
				  SP_SYSTEM_STATUS_REG, &value);
		if (err) {
			FUNC1("Read system status reg failed: %d\n", err);
			return;
		}

		if (!(value & SP_TMDS_CLOCK_DET)) {
			FUNC0("IRQ: *** Waiting for HDMI clock ***\n");
			return;
		}

		if (!(value & SP_TMDS_DE_DET)) {
			FUNC0("IRQ: *** Waiting for HDMI signal ***\n");
			return;
		}

		err = FUNC2(anx78xx);
		if (err)
			FUNC1("Failed to start link training: %d\n", err);
	}
}