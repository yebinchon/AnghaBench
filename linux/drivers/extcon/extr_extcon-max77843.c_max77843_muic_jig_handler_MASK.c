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
struct max77843_muic_info {int /*<<< orphan*/  edev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EXTCON_JIG ; 
#define  MAX77843_MUIC_ADC_FACTORY_MODE_UART_OFF 130 
#define  MAX77843_MUIC_ADC_FACTORY_MODE_USB_OFF 129 
#define  MAX77843_MUIC_ADC_FACTORY_MODE_USB_ON 128 
 int /*<<< orphan*/  MAX77843_MUIC_CONTROL1_SW_OPEN ; 
 int /*<<< orphan*/  MAX77843_MUIC_CONTROL1_SW_UART ; 
 int /*<<< orphan*/  MAX77843_MUIC_CONTROL1_SW_USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct max77843_muic_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct max77843_muic_info *info,
		int cable_type, bool attached)
{
	int ret;
	u8 path = MAX77843_MUIC_CONTROL1_SW_OPEN;

	FUNC0(info->dev, "external connector is %s (adc:0x%02x)\n",
			attached ? "attached" : "detached", cable_type);

	switch (cable_type) {
	case MAX77843_MUIC_ADC_FACTORY_MODE_USB_OFF:
	case MAX77843_MUIC_ADC_FACTORY_MODE_USB_ON:
		path = MAX77843_MUIC_CONTROL1_SW_USB;
		break;
	case MAX77843_MUIC_ADC_FACTORY_MODE_UART_OFF:
		path = MAX77843_MUIC_CONTROL1_SW_UART;
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC2(info, path, attached, false);
	if (ret < 0)
		return ret;

	FUNC1(info->edev, EXTCON_JIG, attached);

	return 0;
}