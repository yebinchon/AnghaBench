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
struct vprbrd_gpioa_msg {unsigned int offset; int t1; int t2; int invert; int pwmlevel; int outval; int risefall; int answer; int __fill; int /*<<< orphan*/  clk; int /*<<< orphan*/  cmd; } ;
struct vprbrd_gpio {int gpioa_out; struct vprbrd* vb; } ;
struct vprbrd {int /*<<< orphan*/  lock; int /*<<< orphan*/  usb_dev; scalar_t__ buf; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  VPRBRD_GPIOA_CMD_SETIN ; 
 int /*<<< orphan*/  VPRBRD_USB_REQUEST_GPIOA ; 
 int /*<<< orphan*/  VPRBRD_USB_TIMEOUT_MS ; 
 int /*<<< orphan*/  VPRBRD_USB_TYPE_OUT ; 
 int /*<<< orphan*/  gpioa_clk ; 
 struct vprbrd_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct vprbrd_gpioa_msg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip,
			unsigned int offset)
{
	int ret;
	struct vprbrd_gpio *gpio = FUNC0(chip);
	struct vprbrd *vb = gpio->vb;
	struct vprbrd_gpioa_msg *gamsg = (struct vprbrd_gpioa_msg *)vb->buf;

	gpio->gpioa_out &= ~(1 << offset);

	FUNC1(&vb->lock);

	gamsg->cmd = VPRBRD_GPIOA_CMD_SETIN;
	gamsg->clk = gpioa_clk;
	gamsg->offset = offset;
	gamsg->t1 = 0x00;
	gamsg->t2 = 0x00;
	gamsg->invert = 0x00;
	gamsg->pwmlevel = 0x00;
	gamsg->outval = 0x00;
	gamsg->risefall = 0x00;
	gamsg->answer = 0x00;
	gamsg->__fill = 0x00;

	ret = FUNC3(vb->usb_dev, FUNC4(vb->usb_dev, 0),
		VPRBRD_USB_REQUEST_GPIOA, VPRBRD_USB_TYPE_OUT, 0x0000,
		0x0000, gamsg, sizeof(struct vprbrd_gpioa_msg),
		VPRBRD_USB_TIMEOUT_MS);

	FUNC2(&vb->lock);

	if (ret != sizeof(struct vprbrd_gpioa_msg))
		return -EREMOTEIO;

	return 0;
}