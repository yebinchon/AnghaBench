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
struct anx78xx {int /*<<< orphan*/ * map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t I2C_IDX_TX_P1 ; 
 size_t I2C_IDX_TX_P2 ; 
 int /*<<< orphan*/  SP_ANALOG_CTRL0_REG ; 
 int /*<<< orphan*/  SP_DP_TX_LT_CTRL0_REG ; 
 int /*<<< orphan*/  dp_tx_output_precise_tune_bits ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct anx78xx *anx78xx)
{
	int err;

	/*
	 * REVISIT : It is writing to a RESERVED bits in Analog Control 0
	 * register.
	 */
	err = FUNC2(anx78xx->map[I2C_IDX_TX_P2], SP_ANALOG_CTRL0_REG,
			   0x02);
	if (err)
		return err;

	/*
	 * Write DP TX output emphasis precise tune bits.
	 */
	err = FUNC1(anx78xx->map[I2C_IDX_TX_P1],
				SP_DP_TX_LT_CTRL0_REG,
				dp_tx_output_precise_tune_bits,
				FUNC0(dp_tx_output_precise_tune_bits));

	if (err)
		return err;

	return 0;
}