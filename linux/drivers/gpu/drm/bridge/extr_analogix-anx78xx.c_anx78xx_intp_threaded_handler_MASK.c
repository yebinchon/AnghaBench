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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct anx78xx {TYPE_1__ connector; int /*<<< orphan*/  lock; int /*<<< orphan*/ * map; int /*<<< orphan*/  powered; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t I2C_IDX_RX_P0 ; 
 size_t I2C_IDX_TX_P2 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SP_COMMON_INT_STATUS4_REG ; 
 int /*<<< orphan*/  SP_DP_INT_STATUS1_REG ; 
 int /*<<< orphan*/  SP_INT_STATUS1_REG ; 
 int FUNC1 (struct anx78xx*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct anx78xx*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct anx78xx*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int unused, void *data)
{
	struct anx78xx *anx78xx = data;
	bool event = false;
	unsigned int irq;
	int err;

	FUNC5(&anx78xx->lock);

	err = FUNC7(anx78xx->map[I2C_IDX_TX_P2], SP_DP_INT_STATUS1_REG,
			  &irq);
	if (err) {
		FUNC0("Failed to read DP interrupt 1 status: %d\n", err);
		goto unlock;
	}

	if (irq)
		FUNC2(anx78xx, irq);

	err = FUNC7(anx78xx->map[I2C_IDX_TX_P2],
			  SP_COMMON_INT_STATUS4_REG, &irq);
	if (err) {
		FUNC0("Failed to read common interrupt 4 status: %d\n",
			  err);
		goto unlock;
	}

	if (irq)
		event = FUNC1(anx78xx, irq);

	/* Make sure we are still powered after handle HPD events */
	if (!anx78xx->powered)
		goto unlock;

	err = FUNC7(anx78xx->map[I2C_IDX_RX_P0], SP_INT_STATUS1_REG,
			  &irq);
	if (err) {
		FUNC0("Failed to read HDMI int 1 status: %d\n", err);
		goto unlock;
	}

	if (irq)
		FUNC3(anx78xx, irq);

unlock:
	FUNC6(&anx78xx->lock);

	if (event)
		FUNC4(anx78xx->connector.dev);

	return IRQ_HANDLED;
}