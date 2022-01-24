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
struct hidma_lldev {int /*<<< orphan*/  lock; scalar_t__ evca; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HIDMA_ERR_INT_MASK ; 
 scalar_t__ HIDMA_EVCA_IRQ_CLR_REG ; 
 int /*<<< orphan*/  HIDMA_EVRE_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hidma_lldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hidma_lldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hidma_lldev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct hidma_lldev *lldev, int cause)
{
	unsigned long irqflags;

	if (cause & HIDMA_ERR_INT_MASK) {
		FUNC0(lldev->dev, "error 0x%x, disabling...\n",
				cause);

		/* Clear out pending interrupts */
		FUNC6(cause, lldev->evca + HIDMA_EVCA_IRQ_CLR_REG);

		/* No further submissions. */
		FUNC3(lldev);

		/* Driver completes the txn and intimates the client.*/
		FUNC1(lldev, 0xFF,
					  HIDMA_EVRE_STATUS_ERROR);

		return;
	}

	FUNC4(&lldev->lock, irqflags);
	FUNC7(cause, lldev->evca + HIDMA_EVCA_IRQ_CLR_REG);
	FUNC5(&lldev->lock, irqflags);

	/*
	 * Fine tuned for this HW...
	 *
	 * This ISR has been designed for this particular hardware. Relaxed
	 * read and write accessors are used for performance reasons due to
	 * interrupt delivery guarantees. Do not copy this code blindly and
	 * expect that to work.
	 *
	 * Try to consume as many EVREs as possible.
	 */
	FUNC2(lldev);
}