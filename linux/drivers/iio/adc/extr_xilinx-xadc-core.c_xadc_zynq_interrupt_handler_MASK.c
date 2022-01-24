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
typedef  int uint32_t ;
struct xadc {int zynq_intmask; int zynq_masked_alarm; int /*<<< orphan*/  lock; int /*<<< orphan*/  zynq_unmask_work; int /*<<< orphan*/  completion; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int XADC_ZYNQ_INT_ALARM_MASK ; 
 int XADC_ZYNQ_INT_DFIFO_GTH ; 
 int /*<<< orphan*/  XADC_ZYNQ_REG_INTSTS ; 
 int /*<<< orphan*/  XADC_ZYNQ_UNMASK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xadc* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xadc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct xadc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct xadc*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *devid)
{
	struct iio_dev *indio_dev = devid;
	struct xadc *xadc = FUNC1(indio_dev);
	uint32_t status;

	FUNC7(xadc, XADC_ZYNQ_REG_INTSTS, &status);

	status &= ~(xadc->zynq_intmask | xadc->zynq_masked_alarm);

	if (!status)
		return IRQ_NONE;

	FUNC4(&xadc->lock);

	FUNC8(xadc, XADC_ZYNQ_REG_INTSTS, status);

	if (status & XADC_ZYNQ_INT_DFIFO_GTH) {
		FUNC10(xadc, XADC_ZYNQ_INT_DFIFO_GTH,
			XADC_ZYNQ_INT_DFIFO_GTH);
		FUNC0(&xadc->completion);
	}

	status &= XADC_ZYNQ_INT_ALARM_MASK;
	if (status) {
		xadc->zynq_masked_alarm |= status;
		/*
		 * mask the current event interrupt,
		 * unmask it when the interrupt is no more active.
		 */
		FUNC10(xadc, 0, 0);

		FUNC6(indio_dev,
				FUNC9(status));

		/* unmask the required interrupts in timer. */
		FUNC3(&xadc->zynq_unmask_work,
				FUNC2(XADC_ZYNQ_UNMASK_TIMEOUT));
	}
	FUNC5(&xadc->lock);

	return IRQ_HANDLED;
}