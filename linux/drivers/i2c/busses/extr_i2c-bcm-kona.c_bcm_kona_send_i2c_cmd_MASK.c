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
struct bcm_kona_i2c_dev {int /*<<< orphan*/  device; scalar_t__ base; int /*<<< orphan*/  done; } ;
typedef  enum bcm_kona_cmd_t { ____Placeholder_bcm_kona_cmd_t } bcm_kona_cmd_t ;

/* Variables and functions */
 int BCM_CMD_NOACTION ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  I2C_TIMEOUT ; 
 int /*<<< orphan*/  IER_I2C_INT_EN_MASK ; 
 scalar_t__ IER_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_kona_i2c_dev*,int) ; 
 int FUNC1 (struct bcm_kona_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct bcm_kona_i2c_dev *dev,
				 enum bcm_kona_cmd_t cmd)
{
	int rc;
	unsigned long time_left = FUNC3(I2C_TIMEOUT);

	/* Make sure the hardware is ready */
	rc = FUNC1(dev);
	if (rc < 0)
		return rc;

	/* Unmask the session done interrupt */
	FUNC6(IER_I2C_INT_EN_MASK, dev->base + IER_OFFSET);

	/* Mark as incomplete before sending the command */
	FUNC4(&dev->done);

	/* Send the command */
	FUNC0(dev, cmd);

	/* Wait for transaction to finish or timeout */
	time_left = FUNC5(&dev->done, time_left);

	/* Mask all interrupts */
	FUNC6(0, dev->base + IER_OFFSET);

	if (!time_left) {
		FUNC2(dev->device, "controller timed out\n");
		rc = -ETIMEDOUT;
	}

	/* Clear command */
	FUNC0(dev, BCM_CMD_NOACTION);

	return rc;
}