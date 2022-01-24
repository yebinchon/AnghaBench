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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct npcm_adc {int int_status; scalar_t__ regs; int /*<<< orphan*/  dev; scalar_t__ rst_regmap; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int NPCM7XX_IPSRST1_ADC_RST ; 
 int /*<<< orphan*/  NPCM7XX_IPSRST1_OFFSET ; 
 scalar_t__ NPCM_ADCCON ; 
 int NPCM_ADCCON_ADC_CONV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NPCM_ADCCON_CH_MASK ; 
 scalar_t__ NPCM_ADCDATA ; 
 int FUNC1 (int) ; 
 int NPCM_ADC_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct npcm_adc *info, int *val, u8 channel)
{
	int ret;
	u32 regtemp;

	/* Select ADC channel */
	regtemp = FUNC3(info->regs + NPCM_ADCCON);
	regtemp &= ~NPCM_ADCCON_CH_MASK;
	info->int_status = false;
	FUNC4(regtemp | FUNC0(channel) |
		  NPCM_ADCCON_ADC_CONV, info->regs + NPCM_ADCCON);

	ret = FUNC8(info->wq, info->int_status,
					       FUNC5(10));
	if (ret == 0) {
		regtemp = FUNC3(info->regs + NPCM_ADCCON);
		if ((regtemp & NPCM_ADCCON_ADC_CONV) && info->rst_regmap) {
			/* if conversion failed - reset ADC module */
			FUNC7(info->rst_regmap, NPCM7XX_IPSRST1_OFFSET,
				     NPCM7XX_IPSRST1_ADC_RST);
			FUNC6(100);
			FUNC7(info->rst_regmap, NPCM7XX_IPSRST1_OFFSET,
				     0x0);
			FUNC6(100);

			/* Enable ADC and start conversion module */
			FUNC4(NPCM_ADC_ENABLE | NPCM_ADCCON_ADC_CONV,
				  info->regs + NPCM_ADCCON);
			FUNC2(info->dev, "RESET ADC Complete\n");
		}
		return -ETIMEDOUT;
	}
	if (ret < 0)
		return ret;

	*val = FUNC1(FUNC3(info->regs + NPCM_ADCDATA));

	return 0;
}