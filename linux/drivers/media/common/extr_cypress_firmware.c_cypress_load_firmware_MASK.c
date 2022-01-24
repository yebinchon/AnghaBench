#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int /*<<< orphan*/  dev; } ;
struct hexline {int* data; int len; int /*<<< orphan*/  addr; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cs_reg; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 TYPE_1__* cypress ; 
 int FUNC0 (struct firmware const*,struct hexline*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct hexline*) ; 
 struct hexline* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int*,int) ; 

int FUNC5(struct usb_device *udev,
		const struct firmware *fw, int type)
{
	struct hexline *hx;
	int ret, pos = 0;

	hx = FUNC3(sizeof(*hx), GFP_KERNEL);
	if (!hx)
		return -ENOMEM;

	/* stop the CPU */
	hx->data[0] = 1;
	ret = FUNC4(udev, cypress[type].cs_reg, hx->data, 1);
	if (ret != 1) {
		FUNC1(&udev->dev, "%s: CPU stop failed=%d\n",
				KBUILD_MODNAME, ret);
		ret = -EIO;
		goto err_kfree;
	}

	/* write firmware to memory */
	for (;;) {
		ret = FUNC0(fw, hx, &pos);
		if (ret < 0)
			goto err_kfree;
		else if (ret == 0)
			break;

		ret = FUNC4(udev, hx->addr, hx->data, hx->len);
		if (ret < 0) {
			goto err_kfree;
		} else if (ret != hx->len) {
			FUNC1(&udev->dev,
					"%s: error while transferring firmware (transferred size=%d, block size=%d)\n",
					KBUILD_MODNAME, ret, hx->len);
			ret = -EIO;
			goto err_kfree;
		}
	}

	/* start the CPU */
	hx->data[0] = 0;
	ret = FUNC4(udev, cypress[type].cs_reg, hx->data, 1);
	if (ret != 1) {
		FUNC1(&udev->dev, "%s: CPU start failed=%d\n",
				KBUILD_MODNAME, ret);
		ret = -EIO;
		goto err_kfree;
	}

	ret = 0;
err_kfree:
	FUNC2(hx);
	return ret;
}