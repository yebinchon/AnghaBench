#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct iio_dev {int dummy; } ;
struct exynos_adc {int /*<<< orphan*/  regs; TYPE_1__* input; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {scalar_t__ users; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int ADC_DATX_MASK ; 
 int ADC_DATX_PRESSED ; 
 int ADC_DATY_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iio_dev*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct exynos_adc *info = dev_id;
	struct iio_dev *dev = FUNC1(info->dev);
	u32 x, y;
	bool pressed;
	int ret;

	while (info->input->users) {
		ret = FUNC2(dev, &x, &y);
		if (ret == -ETIMEDOUT)
			break;

		pressed = x & y & ADC_DATX_PRESSED;
		if (!pressed) {
			FUNC4(info->input, BTN_TOUCH, 0);
			FUNC5(info->input);
			break;
		}

		FUNC3(info->input, ABS_X, x & ADC_DATX_MASK);
		FUNC3(info->input, ABS_Y, y & ADC_DATY_MASK);
		FUNC4(info->input, BTN_TOUCH, 1);
		FUNC5(info->input);

		FUNC6(1000, 1100);
	};

	FUNC7(0, FUNC0(info->regs));

	return IRQ_HANDLED;
}