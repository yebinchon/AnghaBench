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
struct atmel_sha_dev {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  done_task; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SHA_FLAGS_BUSY ; 
 int SHA_FLAGS_CPU ; 
 int SHA_FLAGS_DMA_READY ; 
 int SHA_FLAGS_OUTPUT_READY ; 
 int /*<<< orphan*/  SHA_IDR ; 
 int /*<<< orphan*/  SHA_IMR ; 
 int /*<<< orphan*/  SHA_ISR ; 
 int FUNC0 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_sha_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct atmel_sha_dev *sha_dd = dev_id;
	u32 reg;

	reg = FUNC0(sha_dd, SHA_ISR);
	if (reg & FUNC0(sha_dd, SHA_IMR)) {
		FUNC1(sha_dd, SHA_IDR, reg);
		if (SHA_FLAGS_BUSY & sha_dd->flags) {
			sha_dd->flags |= SHA_FLAGS_OUTPUT_READY;
			if (!(SHA_FLAGS_CPU & sha_dd->flags))
				sha_dd->flags |= SHA_FLAGS_DMA_READY;
			FUNC3(&sha_dd->done_task);
		} else {
			FUNC2(sha_dd->dev, "SHA interrupt when no active requests.\n");
		}
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}