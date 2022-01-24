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
struct vprbrd {int /*<<< orphan*/  usb_dev; scalar_t__ buf; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  VPRBRD_GPIOB_CMD_SETDIR ; 
 int /*<<< orphan*/  VPRBRD_USB_REQUEST_GPIOB ; 
 int /*<<< orphan*/  VPRBRD_USB_TIMEOUT_MS ; 
 int /*<<< orphan*/  VPRBRD_USB_TYPE_OUT ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct vprbrd_gpiob_msg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vprbrd *vb, unsigned int offset,
	unsigned int dir)
{
	struct vprbrd_gpiob_msg *gbmsg = (struct vprbrd_gpiob_msg *)vb->buf;
	int ret;

	gbmsg->cmd = VPRBRD_GPIOB_CMD_SETDIR;
	gbmsg->val = FUNC0(dir << offset);
	gbmsg->mask = FUNC0(0x0001 << offset);

	ret = FUNC1(vb->usb_dev, FUNC2(vb->usb_dev, 0),
		VPRBRD_USB_REQUEST_GPIOB, VPRBRD_USB_TYPE_OUT, 0x0000,
		0x0000, gbmsg, sizeof(struct vprbrd_gpiob_msg),
		VPRBRD_USB_TIMEOUT_MS);

	if (ret != sizeof(struct vprbrd_gpiob_msg))
		return -EREMOTEIO;

	return 0;
}