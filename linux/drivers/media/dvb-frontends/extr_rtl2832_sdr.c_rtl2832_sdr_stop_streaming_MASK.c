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
struct rtl2832_sdr_dev {int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  v4l2_subdev; struct platform_device* pdev; } ;
struct TYPE_4__ {struct rtl2832_sdr_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct dvb_usb_device {TYPE_1__* props; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* power_ctrl ) (struct dvb_usb_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* frontend_ctrl ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_ON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl2832_sdr_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl2832_sdr_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl2832_sdr_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl2832_sdr_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl2832_sdr_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl2832_sdr_dev*) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dvb_usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl2832_sdr_dev* FUNC14 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC15(struct vb2_queue *vq)
{
	struct rtl2832_sdr_dev *dev = FUNC14(vq);
	struct platform_device *pdev = dev->pdev;
	struct rtl2832_sdr_platform_data *pdata = pdev->dev.platform_data;
	struct dvb_usb_device *d = pdata->dvb_usb_device;

	FUNC2(&pdev->dev, "\n");

	FUNC3(&dev->v4l2_lock);

	FUNC8(dev);
	FUNC7(dev);
	FUNC6(dev);
	FUNC5(dev);
	FUNC9(dev);

	/* sleep tuner */
	if (FUNC0(dev->v4l2_subdev, core, s_power))
		FUNC13(dev->v4l2_subdev, core, s_power, 0);
	else
		FUNC10(dev);

	FUNC1(POWER_ON, &dev->flags);

	/* disable ADC */
	if (d->props->frontend_ctrl)
		d->props->frontend_ctrl(pdata->dvb_frontend, 0);

	if (d->props->power_ctrl)
		d->props->power_ctrl(d, 0);

	FUNC4(&dev->v4l2_lock);
}