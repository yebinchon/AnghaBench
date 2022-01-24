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
struct sahara_dev {int /*<<< orphan*/  dma_completion; int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SAHARA_CMD_CLEAR_ERR ; 
 int SAHARA_CMD_CLEAR_INT ; 
 int /*<<< orphan*/  SAHARA_REG_CMD ; 
 int /*<<< orphan*/  SAHARA_REG_ERRSTATUS ; 
 int /*<<< orphan*/  SAHARA_REG_STATUS ; 
 scalar_t__ SAHARA_STATE_BUSY ; 
 scalar_t__ SAHARA_STATE_COMPLETE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sahara_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sahara_dev*,unsigned int) ; 
 unsigned int FUNC4 (struct sahara_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sahara_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct sahara_dev *dev = (struct sahara_dev *)data;
	unsigned int stat = FUNC4(dev, SAHARA_REG_STATUS);
	unsigned int err = FUNC4(dev, SAHARA_REG_ERRSTATUS);

	FUNC5(dev, SAHARA_CMD_CLEAR_INT | SAHARA_CMD_CLEAR_ERR,
		     SAHARA_REG_CMD);

	FUNC3(dev, stat);

	if (FUNC0(stat) == SAHARA_STATE_BUSY) {
		return IRQ_NONE;
	} else if (FUNC0(stat) == SAHARA_STATE_COMPLETE) {
		dev->error = 0;
	} else {
		FUNC2(dev, err);
		dev->error = -EINVAL;
	}

	FUNC1(&dev->dma_completion);

	return IRQ_HANDLED;
}