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
struct platform_device {int dummy; } ;
struct npcm_adc {int /*<<< orphan*/  adc_clk; int /*<<< orphan*/  vref; scalar_t__ regs; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NPCM_ADCCON ; 
 int NPCM_ADCCON_ADC_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct npcm_adc* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 struct iio_dev* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC6(pdev);
	struct npcm_adc *info = FUNC3(indio_dev);
	u32 regtemp;

	FUNC2(indio_dev);

	regtemp = FUNC4(info->regs + NPCM_ADCCON);
	FUNC5(regtemp & ~NPCM_ADCCON_ADC_EN, info->regs + NPCM_ADCCON);
	if (!FUNC0(info->vref))
		FUNC7(info->vref);
	FUNC1(info->adc_clk);

	return 0;
}