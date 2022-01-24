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
struct vadc_priv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VADC_ADC_CH_SEL_CTL ; 
 int /*<<< orphan*/  VADC_ADC_DIG_PARAM ; 
 int /*<<< orphan*/  VADC_CONV_REQ ; 
 int /*<<< orphan*/  VADC_EN_CTL1 ; 
 int /*<<< orphan*/  VADC_MODE_CTL ; 
 int /*<<< orphan*/  VADC_STATUS1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vadc_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vadc_priv *vadc)
{
	u8 mode, sta1, chan, dig, en, req;
	int ret;

	ret = FUNC1(vadc, VADC_MODE_CTL, &mode);
	if (ret)
		return;

	ret = FUNC1(vadc, VADC_ADC_DIG_PARAM, &dig);
	if (ret)
		return;

	ret = FUNC1(vadc, VADC_ADC_CH_SEL_CTL, &chan);
	if (ret)
		return;

	ret = FUNC1(vadc, VADC_CONV_REQ, &req);
	if (ret)
		return;

	ret = FUNC1(vadc, VADC_STATUS1, &sta1);
	if (ret)
		return;

	ret = FUNC1(vadc, VADC_EN_CTL1, &en);
	if (ret)
		return;

	FUNC0(vadc->dev,
		"mode:%02x en:%02x chan:%02x dig:%02x req:%02x sta1:%02x\n",
		mode, en, chan, dig, req, sta1);
}