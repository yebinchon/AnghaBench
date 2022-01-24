#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int mask; int /*<<< orphan*/  reg; } ;
struct stm32_adc_regspec {TYPE_3__ exten; TYPE_2__* sqr; int /*<<< orphan*/ * smpr; } ;
struct stm32_adc {int* smpr_val; int* buffer; TYPE_4__* cfg; int /*<<< orphan*/  completion; scalar_t__ bufi; } ;
struct TYPE_5__ {struct device* parent; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct iio_chan_spec {int channel; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* stop_conv ) (struct stm32_adc*) ;int /*<<< orphan*/  (* start_conv ) (struct stm32_adc*,int) ;struct stm32_adc_regspec* regs; } ;
struct TYPE_6__ {int mask; int shift; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  STM32_ADC_TIMEOUT ; 
 struct stm32_adc* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_adc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_adc*) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_adc*) ; 
 int FUNC9 (struct stm32_adc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct stm32_adc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct stm32_adc*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct stm32_adc*) ; 
 long FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct iio_dev *indio_dev,
				 const struct iio_chan_spec *chan,
				 int *res)
{
	struct stm32_adc *adc = FUNC0(indio_dev);
	struct device *dev = indio_dev->dev.parent;
	const struct stm32_adc_regspec *regs = adc->cfg->regs;
	long timeout;
	u32 val;
	int ret;

	FUNC5(&adc->completion);

	adc->bufi = 0;

	ret = FUNC1(dev);
	if (ret < 0) {
		FUNC4(dev);
		return ret;
	}

	/* Apply sampling time settings */
	FUNC10(adc, regs->smpr[0], adc->smpr_val[0]);
	FUNC10(adc, regs->smpr[1], adc->smpr_val[1]);

	/* Program chan number in regular sequence (SQ1) */
	val = FUNC9(adc, regs->sqr[1].reg);
	val &= ~regs->sqr[1].mask;
	val |= chan->channel << regs->sqr[1].shift;
	FUNC10(adc, regs->sqr[1].reg, val);

	/* Set regular sequence len (0 for 1 conversion) */
	FUNC6(adc, regs->sqr[0].reg, regs->sqr[0].mask);

	/* Trigger detection disabled (conversion can be launched in SW) */
	FUNC6(adc, regs->exten.reg, regs->exten.mask);

	FUNC8(adc);

	adc->cfg->start_conv(adc, false);

	timeout = FUNC13(
					&adc->completion, STM32_ADC_TIMEOUT);
	if (timeout == 0) {
		ret = -ETIMEDOUT;
	} else if (timeout < 0) {
		ret = timeout;
	} else {
		*res = adc->buffer[0];
		ret = IIO_VAL_INT;
	}

	adc->cfg->stop_conv(adc);

	FUNC7(adc);

	FUNC2(dev);
	FUNC3(dev);

	return ret;
}