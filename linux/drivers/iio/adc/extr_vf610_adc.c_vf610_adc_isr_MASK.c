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
struct vf610_adc {int /*<<< orphan*/  completion; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  value; scalar_t__ regs; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int VF610_ADC_HS_COCO0 ; 
 scalar_t__ VF610_REG_ADC_HS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct vf610_adc* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct vf610_adc*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct iio_dev *indio_dev = dev_id;
	struct vf610_adc *info = FUNC3(indio_dev);
	int coco;

	coco = FUNC6(info->regs + VF610_REG_ADC_HS);
	if (coco & VF610_ADC_HS_COCO0) {
		info->value = FUNC7(info);
		if (FUNC1(indio_dev)) {
			info->buffer[0] = info->value;
			FUNC4(indio_dev,
					info->buffer,
					FUNC2(indio_dev));
			FUNC5(indio_dev->trig);
		} else
			FUNC0(&info->completion);
	}

	return IRQ_HANDLED;
}