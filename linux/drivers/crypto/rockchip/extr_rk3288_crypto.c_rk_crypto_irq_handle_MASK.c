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
struct rk_crypto_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  done_task; int /*<<< orphan*/  err; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (struct rk_crypto_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rk_crypto_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RK_CRYPTO_INTSTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct rk_crypto_info* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct rk_crypto_info *dev  = FUNC3(dev_id);
	u32 interrupt_status;

	FUNC4(&dev->lock);
	interrupt_status = FUNC0(dev, RK_CRYPTO_INTSTS);
	FUNC1(dev, RK_CRYPTO_INTSTS, interrupt_status);

	if (interrupt_status & 0x0a) {
		FUNC2(dev->dev, "DMA Error\n");
		dev->err = -EFAULT;
	}
	FUNC6(&dev->done_task);

	FUNC5(&dev->lock);
	return IRQ_HANDLED;
}