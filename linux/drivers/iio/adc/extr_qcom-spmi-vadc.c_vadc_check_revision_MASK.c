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
typedef  scalar_t__ u8 ;
struct vadc_priv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  VADC_PERPH_SUBTYPE ; 
 scalar_t__ VADC_PERPH_SUBTYPE_VADC ; 
 int /*<<< orphan*/  VADC_PERPH_TYPE ; 
 scalar_t__ VADC_PERPH_TYPE_ADC ; 
 int /*<<< orphan*/  VADC_REVISION2 ; 
 scalar_t__ VADC_REVISION2_SUPPORTED_VADC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (struct vadc_priv*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(struct vadc_priv *vadc)
{
	u8 val;
	int ret;

	ret = FUNC1(vadc, VADC_PERPH_TYPE, &val);
	if (ret)
		return ret;

	if (val < VADC_PERPH_TYPE_ADC) {
		FUNC0(vadc->dev, "%d is not ADC\n", val);
		return -ENODEV;
	}

	ret = FUNC1(vadc, VADC_PERPH_SUBTYPE, &val);
	if (ret)
		return ret;

	if (val < VADC_PERPH_SUBTYPE_VADC) {
		FUNC0(vadc->dev, "%d is not VADC\n", val);
		return -ENODEV;
	}

	ret = FUNC1(vadc, VADC_REVISION2, &val);
	if (ret)
		return ret;

	if (val < VADC_REVISION2_SUPPORTED_VADC) {
		FUNC0(vadc->dev, "revision %d not supported\n", val);
		return -ENODEV;
	}

	return 0;
}