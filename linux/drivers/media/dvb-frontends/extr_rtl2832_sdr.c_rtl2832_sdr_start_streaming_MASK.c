#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int dummy; } ;
struct rtl2832_sdr_platform_data {int /*<<< orphan*/  dvb_frontend; struct dvb_usb_device* dvb_usb_device; } ;
struct rtl2832_sdr_dev {int /*<<< orphan*/  v4l2_lock; scalar_t__ sequence; int /*<<< orphan*/  v4l2_subdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  udev; struct platform_device* pdev; } ;
struct TYPE_4__ {struct rtl2832_sdr_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct dvb_usb_device {TYPE_1__* props; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* frontend_ctrl ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* power_ctrl ) (struct dvb_usb_device*,int) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  POWER_ON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct rtl2832_sdr_dev*) ; 
 int FUNC5 (struct rtl2832_sdr_dev*) ; 
 int FUNC6 (struct rtl2832_sdr_dev*) ; 
 int FUNC7 (struct rtl2832_sdr_dev*) ; 
 int FUNC8 (struct rtl2832_sdr_dev*) ; 
 int FUNC9 (struct rtl2832_sdr_dev*) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct dvb_usb_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rtl2832_sdr_dev* FUNC14 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC15(struct vb2_queue *vq, unsigned int count)
{
	struct rtl2832_sdr_dev *dev = FUNC14(vq);
	struct platform_device *pdev = dev->pdev;
	struct rtl2832_sdr_platform_data *pdata = pdev->dev.platform_data;
	struct dvb_usb_device *d = pdata->dvb_usb_device;
	int ret;

	FUNC1(&pdev->dev, "\n");

	if (!dev->udev)
		return -ENODEV;

	if (FUNC2(&dev->v4l2_lock))
		return -ERESTARTSYS;

	if (d->props->power_ctrl)
		d->props->power_ctrl(d, 1);

	/* enable ADC */
	if (d->props->frontend_ctrl)
		d->props->frontend_ctrl(pdata->dvb_frontend, 1);

	FUNC10(POWER_ON, &dev->flags);

	/* wake-up tuner */
	if (FUNC0(dev->v4l2_subdev, core, s_power))
		ret = FUNC13(dev->v4l2_subdev, core, s_power, 1);
	else
		ret = FUNC7(dev);
	if (ret)
		goto err;

	ret = FUNC8(dev);
	if (ret)
		goto err;

	ret = FUNC6(dev);
	if (ret)
		goto err;

	ret = FUNC4(dev);
	if (ret)
		goto err;

	ret = FUNC5(dev);
	if (ret)
		goto err;

	dev->sequence = 0;

	ret = FUNC9(dev);
	if (ret)
		goto err;

err:
	FUNC3(&dev->v4l2_lock);

	return ret;
}