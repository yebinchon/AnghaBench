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
 size_t I2C_IDX_TX_P2 ; 
 int /*<<< orphan*/  SP_DP_INT_STATUS1_REG ; 
 int SP_TRAINING_FINISH ; 
 int FUNC1 (struct anx78xx*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct anx78xx *anx78xx, u8 irq)
{
	int err;

	FUNC0("Handle DP interrupt 1: %02x\n", irq);

	err = FUNC2(anx78xx->map[I2C_IDX_TX_P2], SP_DP_INT_STATUS1_REG,
			   irq);
	if (err)
		return err;

	if (irq & SP_TRAINING_FINISH) {
		FUNC0("IRQ: hardware link training finished\n");
		err = FUNC1(anx78xx);
	}

	return err;
}