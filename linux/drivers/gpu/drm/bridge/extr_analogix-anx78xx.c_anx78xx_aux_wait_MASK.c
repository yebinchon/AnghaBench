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
 int /*<<< orphan*/  AUX_WAIT_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ETIMEDOUT ; 
 size_t I2C_IDX_TX_P0 ; 
 int /*<<< orphan*/  SP_AUX_CH_STATUS_REG ; 
 unsigned int SP_AUX_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct anx78xx*) ; 
 int jiffies ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct anx78xx *anx78xx)
{
	unsigned long timeout;
	unsigned int status;
	int err;

	timeout = jiffies + FUNC2(AUX_WAIT_TIMEOUT_MS) + 1;

	while (!FUNC1(anx78xx)) {
		if (FUNC4(jiffies, timeout)) {
			if (!FUNC1(anx78xx)) {
				FUNC0("Timed out waiting AUX to finish\n");
				return -ETIMEDOUT;
			}

			break;
		}

		FUNC5(1000, 2000);
	}

	/* Read the AUX channel access status */
	err = FUNC3(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_CH_STATUS_REG,
			  &status);
	if (err < 0) {
		FUNC0("Failed to read from AUX channel: %d\n", err);
		return err;
	}

	if (status & SP_AUX_STATUS) {
		FUNC0("Failed to wait for AUX channel (status: %02x)\n",
			  status);
		return -ETIMEDOUT;
	}

	return 0;
}