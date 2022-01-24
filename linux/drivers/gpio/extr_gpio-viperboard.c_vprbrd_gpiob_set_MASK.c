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
struct vprbrd_gpiob_msg {void* mask; void* val; int /*<<< orphan*/  cmd; } ;
struct vprbrd_gpio {int gpiob_out; int gpiob_val; struct vprbrd* vb; } ;
struct vprbrd {int /*<<< orphan*/  lock; int /*<<< orphan*/  usb_dev; scalar_t__ buf; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPRBRD_GPIOB_CMD_SETVAL ; 
 int /*<<< orphan*/  VPRBRD_USB_REQUEST_GPIOB ; 
 int /*<<< orphan*/  VPRBRD_USB_TIMEOUT_MS ; 
 int /*<<< orphan*/  VPRBRD_USB_TYPE_OUT ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct vprbrd_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct vprbrd_gpiob_msg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct gpio_chip *chip,
		unsigned int offset, int value)
{
	int ret;
	struct vprbrd_gpio *gpio = FUNC2(chip);
	struct vprbrd *vb = gpio->vb;
	struct vprbrd_gpiob_msg *gbmsg = (struct vprbrd_gpiob_msg *)vb->buf;

	if (gpio->gpiob_out & (1 << offset)) {
		if (value)
			gpio->gpiob_val |= (1 << offset);
		else
			gpio->gpiob_val &= ~(1 << offset);

		FUNC3(&vb->lock);

		gbmsg->cmd = VPRBRD_GPIOB_CMD_SETVAL;
		gbmsg->val = FUNC0(value << offset);
		gbmsg->mask = FUNC0(0x0001 << offset);

		ret = FUNC5(vb->usb_dev,
			FUNC6(vb->usb_dev, 0),
			VPRBRD_USB_REQUEST_GPIOB, VPRBRD_USB_TYPE_OUT,
			0x0000,	0x0000, gbmsg,
			sizeof(struct vprbrd_gpiob_msg), VPRBRD_USB_TIMEOUT_MS);

		FUNC4(&vb->lock);

		if (ret != sizeof(struct vprbrd_gpiob_msg))
			FUNC1(chip->parent, "usb error setting pin value\n");
	}
}