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
struct max77843_muic_info {int /*<<< orphan*/  edev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_DISP_MHL ; 
 int /*<<< orphan*/  EXTCON_DOCK ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int /*<<< orphan*/  MAX77843_MUIC_CONTROL1_SW_USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct max77843_muic_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct max77843_muic_info *info,
		bool attached)
{
	int ret;

	FUNC0(info->dev, "external connector is %s (adc: 0x10)\n",
			attached ? "attached" : "detached");

	ret = FUNC2(info, MAX77843_MUIC_CONTROL1_SW_USB,
				     attached, attached);
	if (ret < 0)
		return ret;

	FUNC1(info->edev, EXTCON_DISP_MHL, attached);
	FUNC1(info->edev, EXTCON_USB_HOST, attached);
	FUNC1(info->edev, EXTCON_DOCK, attached);

	return 0;
}