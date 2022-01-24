#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int mask; int /*<<< orphan*/  reg; } ;
struct stm32_adc_regspec {int /*<<< orphan*/  dr; TYPE_2__ isr_eoc; } ;
struct stm32_adc {size_t bufi; size_t num_conv; int /*<<< orphan*/  completion; int /*<<< orphan*/ * buffer; TYPE_1__* cfg; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {struct stm32_adc_regspec* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct stm32_adc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_adc*) ; 
 int FUNC5 (struct stm32_adc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_adc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct stm32_adc *adc = data;
	struct iio_dev *indio_dev = FUNC2(adc);
	const struct stm32_adc_regspec *regs = adc->cfg->regs;
	u32 status = FUNC5(adc, regs->isr_eoc.reg);

	if (status & regs->isr_eoc.mask) {
		/* Reading DR also clears EOC status flag */
		adc->buffer[adc->bufi] = FUNC6(adc, regs->dr);
		if (FUNC1(indio_dev)) {
			adc->bufi++;
			if (adc->bufi >= adc->num_conv) {
				FUNC4(adc);
				FUNC3(indio_dev->trig);
			}
		} else {
			FUNC0(&adc->completion);
		}
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}