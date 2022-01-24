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
struct npcm_adc {int int_status; int /*<<< orphan*/  wq; scalar_t__ regs; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ NPCM_ADCCON ; 
 int NPCM_ADCCON_ADC_INT_ST ; 
 struct npcm_adc* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	u32 regtemp;
	struct iio_dev *indio_dev = data;
	struct npcm_adc *info = FUNC0(indio_dev);

	regtemp = FUNC1(info->regs + NPCM_ADCCON);
	if (regtemp & NPCM_ADCCON_ADC_INT_ST) {
		FUNC2(regtemp, info->regs + NPCM_ADCCON);
		FUNC3(&info->wq);
		info->int_status = true;
	}

	return IRQ_HANDLED;
}