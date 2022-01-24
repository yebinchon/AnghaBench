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
struct atmel_aes_dev {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  done_task; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AES_FLAGS_BUSY ; 
 int /*<<< orphan*/  AES_IDR ; 
 int /*<<< orphan*/  AES_IMR ; 
 int /*<<< orphan*/  AES_ISR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (struct atmel_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct atmel_aes_dev *aes_dd = dev_id;
	u32 reg;

	reg = FUNC0(aes_dd, AES_ISR);
	if (reg & FUNC0(aes_dd, AES_IMR)) {
		FUNC1(aes_dd, AES_IDR, reg);
		if (AES_FLAGS_BUSY & aes_dd->flags)
			FUNC3(&aes_dd->done_task);
		else
			FUNC2(aes_dd->dev, "AES interrupt when no active requests.\n");
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}